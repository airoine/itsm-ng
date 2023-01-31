#!/bin/bash -e

PHP_MAJOR_VERSION="$(echo $PHP_VERSION | cut -d '.' -f 1,2)"

# Validate composer config
composer validate --strict
#if ! [[ "$PHP_MAJOR_VERSION" == "8.0" ]]; then
#  composer check-platform-reqs;
#fi

# Install dependencies
bin/console dependencies install
