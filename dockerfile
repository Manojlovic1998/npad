FROM httpd:2.4

# Copy rest of the application
# COPY ./apache/nemanja.ergogen.com.conf /usr/local/apache2/conf/httpd.conf
COPY nemanja.ergogen.com /usr/local/apache2/htdocs/
