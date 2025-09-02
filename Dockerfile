FROM php:8.4-apache

RUN apt-get update && apt-get install --no-install-recommends -y \
    libimage-magick-perl \
    poppler-utils \
    wget

RUN cpan CGI
RUN cpan PDF::API2
RUN cpan Data::Dumper
RUN cpan Image::Size

RUN a2enmod cgi

EXPOSE 80
