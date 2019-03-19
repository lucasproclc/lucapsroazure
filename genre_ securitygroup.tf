variable "resourcename" {
  default = "erictrianzdemo"
}    
    security_rule {
        name                       = "SMTP"
        priority                   = 1001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "25"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }
    
     security_rule {
        name                       = "SMTP"
        priority                   = 1002
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "465"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }   
    security_rule {
        name                       = "SMTP"
        priority                   = 1003
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "587"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }
    tags {
        environment = "Security SMTP Tag Example"
    }
