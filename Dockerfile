# ── Stage: serve static site with Nginx on port 8080 (Cloud Run requirement) ──
FROM nginx:alpine

# Remove default nginx static content
RUN rm -rf /usr/share/nginx/html/*

# Copy the site
COPY aaharai.html /usr/share/nginx/html/index.html

# Copy custom nginx config that listens on 8080
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
