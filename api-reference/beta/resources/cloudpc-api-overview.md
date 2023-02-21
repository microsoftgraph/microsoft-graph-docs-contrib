---
title: "Working with Windows 365 Cloud PCs using the Microsoft Graph API"
description: "The Microsoft Graph API enables programmatic access to Cloud PC information and management actions on your organization."
author: "cohanley"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# Working with Windows 365 Cloud PCs using the Microsoft Graph API

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Windows 365 is a cloud-based service that automatically creates a new type of Windows virtual machine (Cloud PCs) for your end users. Each Cloud PC is assigned to an individual user as a  dedicated Windows device. Windows 365 provides the productivity, security, and collaboration benefits of Microsoft 365.

The Microsoft Graph API enables programmatic access to Cloud PC information and management actions on your organization. The API performs the same operations as those available through Microsoft Endpoint Manager.

> [!IMPORTANT]
> Using the Microsoft Graph API for Cloud PCs requires an active [Windows 365 license](https://www.microsoft.com/windows-365) for the organization. Currently, Microsoft Graph API is available for both Windows 365 Enterprise and Windows 365 Business.

## Using the Microsoft Graph API for Cloud PCs

With Microsoft Graph, you can provision and manage Cloud PCs in your organization. If used in conjunction with the Intune API, you can manage Cloud PCs alongside physical endpoints as well.

## Using Microsoft Graph permissions

Microsoft Graph controls access to resources via permissions. As a developer, you must specify the permissions you need to access Windows 365 resources. Typically, you specify the permissions in the Azure Active Directory portal. For more information, see [Microsoft Graph permissions reference](/graph/permissions-reference) and navigate to the [Cloud PC permissions](/graph/permissions-reference#cloud-pc-permissions) section.

## Common use cases

|Use cases|REST resources|See also|
|:---|:---|:---|
|List, get, create, update, delete, or assign provisioning policies|[cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md)|[Provisioning overview](/windows-365/enterprise/provisioning)|
|Manage Cloud PCs including reprovision, end Cloud PC grace period, bulk reprovision, and resize Cloud PCs|[cloudPC](../resources/cloudpc.md)|[Cloud PCs lifecycle](/windows-365/enterprise/lifecycle)|
|List, get, create, delete, get source images, and reupload Cloud PC OS images|[cloudPCDeviceImage](../resources/cloudpcdeviceimage.md)|[Device images overview](/windows-365/enterprise/device-images)|
|List, get, create, update delete, update AD domain password, and run health checks for on-premises network connections|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|[On-premises network connection overview](/windows-365/enterprise/on-premises-network-connections)|
|List audit events for Cloud PCs, get a specific audit event, and get audit activity types|[cloudPcAuditEvent](../resources/cloudpcauditevent.md)|[Get Cloud PC audit logs](/windows-365/enterprise/get-cloud-pc-audit-logs-using-powershell)|
|List, get, create, update, delete or assign user settings|[cloudPcUserSetting](../resources/cloudpcusersetting.md)|[User settings overview](../resources/cloudpcusersetting.md)|
|Set up rules to alert issues on the Microsoft Endpoint Manager admin center with provisioning Cloud PCs, uploading Cloud PC images, and checking Azure network connections. |[alertRecord](devicemanagement-alertrecord.md), [alertRule](devicemanagement-alertrule.md) | [Alert monitoring API](devicemanagement-monitoring.md) |

## What's new

Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

## Next steps
- Check out the [overview for Windows 365 Cloud PC on Microsoft Graph](/graph/cloudpc-concept-overview).
- Try out the Windows 365 Cloud PCs APIs by using the [Microsoft Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).