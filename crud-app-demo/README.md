# PHP CRUD Demo (for XAMPP)

A basic 4-file PHP CRUD app (Create, Read, Update, Delete) using PDO + MySQL.

## Files
- `index.php`  – lists all users (Read)
- `create.php` – add a new user (Create)
- `edit.php`   – edit an existing user (Update)
- `delete.php` – delete a user (Delete)
- `db.php`     – shared PDO database connection
- `schema.sql` – creates the database/table

## Setup (XAMPP)

1. **Copy the folder** into your XAMPP `htdocs` directory, e.g.
   `C:\xampp\htdocs\php-crud-demo` (Windows) or `/Applications/XAMPP/htdocs/php-crud-demo` (Mac).

2. **Start Apache and MySQL** from the XAMPP Control Panel.

3. **Create the database:**
   - Open `http://localhost/phpmyadmin`
   - Click the **Import** tab, choose `schema.sql`, and click **Go**
   - (Or paste the contents of `schema.sql` into the **SQL** tab and run it.)

4. **Check `db.php`** — the defaults (`host=localhost`, `user=root`, `pass=''`) match a
   stock XAMPP install. If your MySQL root user has a password set, update `$pass` in `db.php`.

5. **Open the app:**
   `http://localhost/php-crud-demo/index.php`

You should see two sample users. Try adding, editing, and deleting to confirm everything works.

## Notes
- Uses PDO with prepared statements throughout (safe from basic SQL injection).
- Output is escaped with `htmlspecialchars()` to avoid XSS.
- Styled with Bootstrap 5 via CDN, so you'll need an internet connection for the styling
  to load (the app itself works fine offline — you'd just lose the CSS).

## Setup (Docker)

Files added for this: `Dockerfile`, `entrypoint.sh`, `docker-compose.yml`, `.dockerignore`.

1. **Build and start both containers:**
   ```
   docker compose up --build
   ```
   This builds the `app` image (multi-stage: a `builder` stage compiles the
   `pdo_mysql` PHP extension, then the `final` stage copies just the compiled
   result into a lean `php:8.2-apache` image) and starts a `mysql:8.0`
   container alongside it.

2. **First boot only:** MySQL automatically runs `schema.sql` (mounted into
   `/docker-entrypoint-initdb.d/`) to create the table and seed sample rows.

3. **Open the app:**
   `http://localhost/index.php`

4. **Stop it:**
   ```
   docker compose down
   ```
   Add `-v` to also wipe the MySQL data volume (`docker compose down -v`).

### How it fits together
- `app` connects to `db` using the `DB_HOST=db` environment variable set in
  `docker-compose.yml` — `db.php` reads this via `getenv()`, falling back to
  the XAMPP defaults if unset, so the same code works in both setups.
- `entrypoint.sh` polls the DB container's port before starting Apache, so
  the app container doesn't fail on the first request while MySQL is still
  initializing.
- The Dockerfile's `HEALTHCHECK` and the compose file's `depends_on:
  condition: service_healthy` mean the app container won't be marked ready
  until the database is actually reachable.
