require 'cinch'
require 'nmap/program'
require 'nmap/xml'

module Cinch::Plugins
  class ScanNmap
    include Cinch::Plugin

    match /nmap (.*)/

    def execute(m, ip)
      scan(ip)
        Nmap::XML.new("tmp.xml") do |xml|
          xml.each_up_host do |host|
            m.reply "[#{host.hostnames}]"
            m.reply "[#{host.ip}]"
            host.each_port do |port|
              m.reply "  #{port.number}/#{port.protocol}\t#{port.state}\t#{port.service}"
            end
          end
        end
     end

    private
      def scan(ip)

        Nmap::Program.scan do |nmap|
          nmap.xml = "tmp.xml"
          nmap.ports = [20,21,22,23,25,80,110,443,512,522,8080,1080]
          nmap.targets = "#{ip}" 
        end

      end
    end
  end
