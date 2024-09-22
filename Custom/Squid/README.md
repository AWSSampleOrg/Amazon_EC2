# Varieties of squid.conf

## Default Squid config (version 6.6)

squid.conf

## To allow local access to access proxy

Use `local/squid.conf`

## To allow remote server to access proxy

Use `remote/squid.conf`

## To ban accessing specified domain and its subdomains with remote squid server (based on `remote/squid.conf`)

Use `blacklist/squid.conf` and `domain_blacklist.txt`

# Squid useful parameters

- overall
  https://www.squid-cache.org/Doc/config/

- read_timeout
  http://www.squid-cache.org/Doc/config/read_timeout/

  ```
  Applied on peer server connections.

  After each successful read(), the timeout will be extended by this
  amount.  If no data is read again after this amount of time,
  the request is aborted and logged with ERR_READ_TIMEOUT.

  The default is 15 minutes.
  ```
