#!/bin/bash
set -euo pipefail

APP_DIR="/opt/cicdtestivan"
SERVICE_FILE="/etc/systemd/system/cicdtestivan.service"

mkdir -p "${APP_DIR}"
chown -R ec2-user:ec2-user "${APP_DIR}"

cat > "${SERVICE_FILE}" <<'EOF'
[Unit]
Description=CICDTestIvan Spring Boot Application
After=network.target

[Service]
Type=simple
User=ec2-user
WorkingDirectory=/opt/cicdtestivan
ExecStart=/usr/bin/java -jar /opt/cicdtestivan/app.jar
SuccessExitStatus=143
Restart=always
RestartSec=5

[Install]
WantedBy=multi-user.target
EOF

chmod 644 "${SERVICE_FILE}"
systemctl daemon-reload
