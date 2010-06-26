module DHCP::Validations

  class Error < RuntimeError; end
  private

  # validates the ip address
  def validate_ip ip
    raise Error, "Invalid IP Address #{ip}" unless ip =~ /(\d{1,3}\.){3}\d{1,3}/
    ip
  end

  # validates the mac
  def validate_mac mac
    raise Error, "Invalid MAC #{mac}" unless mac =~ /([a-f0-9]{1,2}:){5}[a-f0-9]{1,2}/
    mac
  end

  def validate_subnet subnet
    raise Error, "Invalid Subnet #{subnet}" unless subnet.is_a?(DHCP::Subnet)
    subnet
  end

  def validate_server server
    raise Error, "Invalid Server #{server}" unless server.is_a?(DHCP::Server)
    server
  end

  def validate_record record
    raise Error, "Invalid Record #{record}" unless record.is_a?(DHCP::Record)
    record
  end

end
