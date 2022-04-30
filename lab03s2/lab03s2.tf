
resource "azurerm_linux_virtual_machine" "vmlinux" {
  name                  = "${var.linux_name}-vm"
  resource_group_name   = var.rg2
  location              = var.location
  size               = var.vm_size
  network_interface_ids = [azurerm_network_interface.linux_nic.id]
  computer_name          = var.linux_name
  admin_username        = var.Admin_user_name

  admin_ssh_key {
    username   = var.Admin_user_name
    public_key = file("/home/n01516507/.ssh/id_rsa.pub")
  }

  
  

  source_image_reference {
    publisher = var.linux_publisher
    offer     = var.linux_offer
    sku       = var.linux_sku
    version   = var.linux_version
  }

  
  os_disk {
    name              = "${var.linux_name}-os-disk"
    caching           = var.Os_disk_attributes["los_disk_caching"]
    storage_account_type = var.Os_disk_attributes["los_storage_account_type"]
    disk_size_gb = var.Os_disk_attributes["los_disk-size"]


    # caching           = var.Os_disk_attributes["los_disk_caching"]
    # create_option     = var.Os_disk_attributes["los_storage_account_type"]
    # managed_disk_type = var.Os_disk_attributes["los_disk-size"]

  }

}

resource "azurerm_network_interface" "linux_nic" {
  name                = "${var.linux_name}-nic"
  location            = var.location
  resource_group_name = var.rg2

  ip_configuration {
    name                          = "${var.linux_name}-ipconfig1"
    subnet_id                     = azurerm_subnet.subnet.id
    public_ip_address_id          = azurerm_public_ip.linux_pip.id
    private_ip_address_allocation = "Dynamic"
  }
}


resource "azurerm_public_ip" "linux_pip" {
  name                = "${var.linux_name}-pip"
  resource_group_name = var.rg2
  location            = var.location
  allocation_method   = "Dynamic"
  depends_on          = [azurerm_resource_group.rg2]

}






