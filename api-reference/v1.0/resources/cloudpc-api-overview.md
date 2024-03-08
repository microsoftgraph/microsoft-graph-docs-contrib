---
title: "Working with Windows 365 Cloud PCs using the Microsoft Graph API"
description: "The Microsoft Graph API enables programmatic access to Cloud PC information and management actions on your organization."
author: "RuiHou105"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# Working with Windows 365 Cloud PCs using the Microsoft Graph API

Windows 365 is a cloud-based service that automatically creates a new type of Windows virtual machine (Cloud PCs) for your end users. Each Cloud PC is assigned to an individual user as a  dedicated Windows device. Windows 365 provides the productivity, security, and collaboration benefits of Microsoft 365.

The Microsoft Graph API enables programmatic access to Cloud PC information and management actions on your organization. The API performs the same operations as those available through Microsoft Endpoint Manager.

> [!IMPORTANT]
> Using the Microsoft Graph API for Cloud PCs requires an active [Windows 365 license](https://www.microsoft.com/windows-365) for the organization. Currently, the Microsoft Graph API is available for both Windows 365 Enterprise and Windows 365 Business.

## Using the Microsoft Graph API for Cloud PCs

With Microsoft Graph, you can provision and manage Cloud PCs in your organization. If used in conjunction with the Intune API, you can manage Cloud PCs alongside physical endpoints as well.

## Using Microsoft Graph permissions

Microsoft Graph controls access to resources via permissions. As a developer, you must specify the permissions you need to access Windows 365 resources. Typically, you specify the permissions in the Microsoft Entra admin center. For more information, see [Microsoft Graph permissions reference](/graph/permissions-reference).

## Common use cases

|Use cases|REST resources|See also|
|:---|:---|:---|
|List, get, create, delete, and get source images|[cloudPCDeviceImage](../resources/cloudpcdeviceimage.md)|[Device images overview](/windows-365/enterprise/device-images)|

## Next steps
- Check out the [overview for Windows 365 Cloud PC on Microsoft Graph](/graph/cloudpc-concept-overview).
- Try out the Windows 365 Cloud PCs APIs by using the [Microsoft Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
