# CoinMaster-Docker



docker run -d \
  -h *your_host_name* \
  -v /*your_config_location*:/config \
  -v /*your_videos_location*:/rootcoinslocation \
  --restart=always sickbeard
