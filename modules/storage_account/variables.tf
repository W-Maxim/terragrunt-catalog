variable "name" {
  description = "The name of the storage account."
  type        = string
  nullable    = false   
}

variable "stage" {
  description = "The stage of the storage account."
  type        = string
  nullable    = true   
}

variable "environment" {
  description = "The environment of the storage account."
  type        = string
  nullable    = false   
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the storage account."
  type        = string
  nullable    = false   
}

variable "location" {
  description = "The location of the storage account."
  type        = string
  nullable    = false   
}