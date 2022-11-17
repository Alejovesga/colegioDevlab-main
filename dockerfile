FROM php:8.1-fpm

ENV USER=www
ENV GROUP=www
APP_NAME=Laravel
APP_ENV=production
APP_KEY=base64:zrwee88y1me4bUJRfzlPZTZX4q804UF+v6JkZK7MtgU=
APP_DEBUG=true
APP_URL=http://localhost
LOG_CHANNEL=stack
LOG_DEPRECATIONS_CHANNEL=null
LOG_LEVEL=debug
DB_CONNECTION=mysql
DB_HOST=containers-us-west-17.railway.app
DB_PORT=6479
DB_DATABASE=railway
DB_USERNAME=root
DB_PASSWORD=aRQKlrS2eCuNcOR9VQ3o
BROADCAST_DRIVER=log
CACHE_DRIVER=file
FILESYSTEM_DISK=local
QUEUE_CONNECTION=sync
SESSION_DRIVER=file
SESSION_LIFETIME=120
MEMCACHED_HOST=127.0.0.1
REDIS_HOST=127.0.0.1
REDIS_PASSWORD=null
REDIS_PORT=6379
MAIL_MAILER=smtp
MAIL_HOST=smtp.gmail.com
MAIL_PORT=587
MAIL_USERNAME=yonathan123pr@gmail.com
MAIL_PASSWORD=evmnlucihyvykulf
MAIL_ENCRYPTION=ssl
MAIL_FROM_ADDRESS=yonathan123pr@gmail.com
MAIL_FROM_NAME=${APP_NAME}
AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_DEFAULT_REGION=us-east-1
AWS_BUCKET=
AWS_USE_PATH_STYLE_ENDPOINT=false
PUSHER_APP_ID=
PUSHER_APP_KEY=
PUSHER_APP_SECRET=
PUSHER_HOST=
PUSHER_PORT=443
PUSHER_SCHEME=https
PUSHER_APP_CLUSTER=mt1
VITE_PUSHER_APP_KEY=${PUSHER_APP_KEY}
VITE_PUSHER_HOST=${PUSHER_HOST}
VITE_PUSHER_PORT=${PUSHER_PORT}
VITE_PUSHER_SCHEME=${PUSHER_SCHEME}
VITE_PUSHER_APP_CLUSTER=${PUSHER_APP_CLUSTER}
NIXPACKS_BUILD_CMD=composer install npm && npm i && npm run dev && php artisan optimize && php artisan config:cache && php artisan view:cache && php artisan migrate --force

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Install Postgre PDO
RUN apt-get update && apt-get install -y libpq-dev && docker-php-ext-install pdo pdo_pgsql

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

# Setup working directory
WORKDIR /var/www/

# Create User and Group
RUN groupadd -g 1000 ${GROUP} && useradd -u 1000 -ms /bin/bash -g ${GROUP} ${USER}

# Grant Permissions
RUN chown -R ${USER} /var/www

# Select User
USER ${USER}

# Copy permission to selected user
COPY --chown=${USER}:${GROUP} . .

EXPOSE 9000

CMD ["php-fpm"]
