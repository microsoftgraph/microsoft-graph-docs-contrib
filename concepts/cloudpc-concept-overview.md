---
title: "Windows 365 Cloud PCs overview"
description: "Windows 365 is a cloud-based service that automatically creates a new type of Windows virtual machine (Cloud PCs) for your end users. Each Cloud PC is assigned to an individual user and is their dedicated Windows device. Windows 365 provides the productivity, security, and collaboration benefits of Microsoft 365."
author: "cohanley"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
---

# Windows 365 Cloud PCs overview

Windows 365 is a cloud-based service that automatically creates a new type of Windows virtual machine (Cloud PCs) for your end users. Each Cloud PC is assigned to an individual user and is their dedicated Windows device. Windows 365 provides the productivity, security, and collaboration benefits of Microsoft 365.

## Why integrate with Windows 365 Cloud PCs? 

By integrating with and building on top of Windows 365, you can provision, manage, and secure Cloud PCs for end users as quickly and easily as possible. You can use Microsoft Graph to provision Cloud PCs, manage device images, create and run health checks on on-premises network connections, create and assign provisioning policies, and more.  

### Create on-premises network connections

Create on-premises network connections to give line of sight to a domain controller. Once created, if not in use, an on-premises network connection can be deleted. Health checks can also be run on an on-premises network connection to check its health status and, if needed, the AD domain password can be updated. 

### Provision Cloud PCs

Create provisioning policies and assign to user groups to provision Cloud PCs to them when they have licenses assigned as well. After provisioning policy creation, you can also list, update, and delete provisioning policies. 

### Upload device images

Upload and manage OS images for Cloud PCs to determine which version of Windows with what apps and other image details should be used for Cloud PCs when provisioned.  

### View end users’ Cloud PCs and their properties

Once provisioned, list and view end users’ Cloud PCs and all associated properties. This Cloud PC visibility allows for hands-on management and ease of troubleshooting when needed. 

## API reference

Looking for the API reference for the service?
- [Windows 365 Cloud PCs APIs in Microsoft Graph beta](/api-reference/beta/resources/virtualEndpoint.md)

## Next step

- Try out the Windows 365 Cloud PCs APIs by using the [Microsoft Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
