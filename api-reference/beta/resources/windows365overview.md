---
title: "Working with Windows 365 in Microsoft Graph"
description: "With Microsoft Graph, you can provision and manage Cloud PCs in your tenant and, if used in conjunction with the Intune API, you can manage Cloud PCs alongside physical endpoints as well."
author: "cohanley"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# Working with Windows 365 in Microsoft Graph

Namespace: microsoft.graph

Note: The Microsoft Graph API for Windows 365 requires an active [Windows 365 license](https://www.microsoft.com/en-us/windows-365) for the tenant.

The Microsoft Graph API for Windows 365 enables programmatic access to Windows 365 Cloud PCs information and management actions on your tenant; the API performs the same operations as those available through Microsoft Endpoint Manager. 

Currently, Microsoft Graph API is only available for Windows 365 Enterprise, not Windows 365 Business. 

All Microsoft Graph beta APIs for Windows 365 are tested and validated by the Windows 365 team before they’re deployed. For the latest API changes, see the [changelog](https://developer.microsoft.com/graph/changelog).

## Using the Microsoft Graph API for Windows 365

With Microsoft Graph, you can provision and manage Cloud PCs in your tenant and, if used in conjunction with the Intune API, you can manage Cloud PCs alongside physical endpoints as well. 

## Using Microsoft Graph permissions

Microsoft Graph controls access to resources via permissions. As a developer, you must specify the permissions you need to access Windows 365 resources. Typically, you specify the permissions in the Azure Active Directory portal. For more information, see [Microsoft Graph permissions reference](/graph/permissions-reference) and navigate to the Cloud PC section. 

## Common use cases

|Use cases|REST resources|See also|
|:---|:---|:---|
|List, get, create, update, delete, or assign provisioning policies|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md)|[Provisioning overview](/windows-365/provisioning)|
|Manage Cloud PCs including reprovision, end Cloud PC grace period, bulk reprovision, and resize Cloud PCs|[cloudPC](../resources/cloudpc.md)|[Cloud PCs lifecycle](../resources/cloudpc.md)|
|List, get, create, delete, get source images, and reupload Cloud PC OS images|[cloudPCDeviceImage](../resources/cloudpcdeviceimage.md)|[Device images overview](/windows-365/device-images)|
|List, get, create, update delete, update AD domain password, and run health checks for on-premises network connections|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|[On-premises network connection overview](/windows-365/on-premises-network-connections)|
|List audit events for Cloud PCs, get a specific audit event, and get audit activity types|[cloudPcAuditEvent](../resources/cloudpcauditevent.md)|[Get Cloud PC audit logs](https://docs.microsoft.com/windows-365/get-cloud-pc-audit-logs-using-powershell)|
|List, get, create, update, delete or assign user settings|[cloudPcUserSetting](../resources/cloudpcusersetting.md)|[User settings overview](../resources/cloudpcusersetting.md)|

## What's new

Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.