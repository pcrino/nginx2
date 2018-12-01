nginx-ppa:
  pkgrepo.managed:
    - name: ppa:nginx/stable
    - require_in: nginx

nginx:
  pkg.latest:
    - refresh: True

  service:
    - running
    - reload: True
    - enable: True
    - watch:
      - pkg: nginx

/etc/nginx/nginx.conf:
  file.managed:
    - source: salt://nginx/files/nginx.conf
    - user: root
    - group: root
    - mode: 640

/etc/nginx/sites-available/default:
  file.managed:
    - source: salt://nginx/files/default.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 640

/etc/nginx/sites-enabled/default:
  file.symlink:
    - target: /etc/nginx/sites-available/default
    - require:
      - file: /etc/nginx/sites-available/default
