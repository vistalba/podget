# podget Docker Image  

A minimal **Debian bookworm‑slim** container that runs **Podget** – a command‑line podcast downloader. The image includes the required Perl runtime and a handful of useful utilities, all pre‑configured for the Swiss German locale (`de_CH.UTF‑8`).  

## Description  

- Based on the official `debian:bookworm-slim` base image.  
- Installs `podget`, Perl, coreutils, curl, wget, OpenSSH client, vim, locales, and CA certificates.  
- Sets the container’s locale to `de_CH.UTF‑8`.  
- Strips the image of all package caches to keep the final size small.  
- The default entrypoint launches `podget`, so you can run it directly.

## Notes  

- The container runs as the default `root` user.
- Locale is set to `de_CH.UTF-8`; adjust `ENV LANG`, `LANGUAGE`, and `LC_ALL` if you prefer another locale.  

---  

Feel free to fork and extend the image (e.g., add cron, custom scripts, or alternative locales). Happy podcasting!
