---
title: "Windows 365 Cloud PC on Microsoft Graph (preview)"
description: "Integrate with Windows 365 Cloud PC to create Azure network connections, provision Cloud PCs, manage device images, and create and assign provisioning policies."
author: "cohanley"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
---

# Overview for Windows 365 Cloud PC on Microsoft Graph (preview)

Windows 365 is a cloud-based service that provisions and hosts Cloud PCs as virtual machines for end users. Administrators can easily set up, manage, and scale Windows 365 Cloud PCs to fit the organization's needs. Individual end users can securely stream their rich, personalized Windows experience&mdash;including their apps, data, content, and settings&mdash;from the Microsoft cloud to any device, any time, with their Windows 365 Cloud PC.

## Why integrate with Windows 365 Cloud PCs? 

By integrating with and building on top of Windows 365, you can provision, manage, and secure Cloud PCs for end users as quickly and easily as possible. Using the Microsoft Graph API, you can provision Cloud PCs, manage device images, create and run health checks on Azure network connections, create and assign provisioning policies, and more.  

### Create Azure network connections

Create [Azure network connections](/graph/api/resources/cloudpconpremisesconnection?view=graph-rest-beta&preserve-view=true) to give line of sight to a domain controller. Once created, if not in use, an Azure network connection can be deleted. Health checks can also be run on an Azure network connection to check its health status and, if needed, the Active Directory domain password can be updated. 

### Provision Cloud PCs

Create [provisioning policies](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true) and assign to user groups to provision Cloud PCs to them when they have licenses assigned as well. After provisioning policy creation, you can also list, update, and delete provisioning policies. 

### Upload device images

Upload and manage operating system [images](/graph/api/resources/cloudpcdeviceimage?view=graph-rest-beta&preserve-view=true) for Cloud PCs to determine which version of Windows with what apps and other image details should be used for Cloud PCs when provisioned.  

### View end users’ Cloud PCs and their properties

Once provisioned, list and view end users’ [Cloud PCs](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) and all associated properties. This Cloud PC visibility allows for hands-on management and ease of troubleshooting when needed. 

## API reference

Looking for the API reference for the service?

- [Working with Windows 365 Cloud PCs using the Microsoft Graph API](/graph/api/resources/cloudpc-api-overview?view=graph-rest-beta&preserve-view=true)

## Next step

- Try out the Windows 365 Cloud PC APIs by using [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
