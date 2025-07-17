---
title: "Working with Intune in Microsoft Graph"
description: "The Microsoft Graph API for Intune enables programmatic access to Intune information for your tenant; the API performs the same Intune operations as those available through the Azure Portal."
author: "jaiprakashmb"
ms.localizationpriority: high
ms.subservice: "intune"
doc_type: conceptualPageType
ms.date: 09/25/2024
---

# Working with Intune in Microsoft Graph  

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://www.microsoft.com/cloud-platform/microsoft-intune-pricing) by the customer.

The Microsoft Graph API for Intune enables programmatic access to Intune information for your tenant; the API performs the same Intune operations as those available through the **Azure Portal**.  

For mobile device management (MDM) scenarios, the Microsoft Graph API for Intune supports standalone deployments; Intune [hybrid deployments](/sccm/mdm/understand/choose-between-standalone-intune-and-hybrid-mobile-device-management) are not supported. 



## Using the Microsoft Graph API for Intune

Intune provides data into the Microsoft Graph API in the same way as other cloud services do, with rich entity information and relationship navigation. Use the Microsoft Graph API to combine information from other services and Intune to build rich cross-service applications for IT professionals or end users.     

The following example shows how you can determine whether an application is installed on a user's device: 

1. Get from Azure Active Directory a list of devices registered to a user: 

    `https://graph.microsoft.com/v1.0/users/{user}/ownedDevices` 

2. Then view the list of applications for your tenant: 

    `https://graph.microsoft.com/v1.0/deviceAppManagement/mobileApps`  

3. Take the ID from the application and determine the installation state for the application (and therefore user):

    `https://graph.microsoft.com/v1.0/deviceAppManagement/mobileApps/{id}/deviceStatuses/`

## Accessing the Microsoft Graph API for Intune

Intune supports both [delegated permissions](/graph/auth-v2-user) and [application permissions](/graph/auth-v2-service). Delegated and application permissions support both read and write operations. Delegated and application permissions support both single tenant applications, as well as multi-tenant applications. For more information about the permissions available through Microsoft Graph, see [Microsoft Graph permissions reference](/graph/permissions-reference).

## Using permissions

The Microsoft Graph API controls access to resources via permissions. As a developer, you must specify the permissions you need to access Intune resources. Typically, you specify the permissions in the Azure Active Directory portal. For more information, see [Microsoft Graph permissions reference](/graph/permissions-reference).

## Interaction between Microsoft Graph APIs for Windows updates

Microsoft Graph includes two sets of APIs that you can use to manage Windows updates: 

- [Intune APIs](/graph/intune-concept-overview)
- [Windows updates APIs](/graph/windowsupdates-concept-overview)

You can use either API to manage Windows updates; however, these two APIs are not compatible with each other. Each can overwrite the configurations made by the other without providing visibility into that action. Use of both APIs to manage updates can result in unexpected behaviors, including what appears to be temporary configurations for update deployments that are canceled or modified without an identified cause.   

## Next Steps

- Learn [how to use Entra ID](/graph/auth/auth-concepts) to access the Microsoft Graph API for Intune.  
- Explore the [PowerShell Intune samples](https://microsoft.github.io/webportal-intune-samples/), which show how to use the Microsoft Graph API for Intune in context of working examples.
