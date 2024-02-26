---
title: Configure Microsoft Entra Private Access using the Microsoft Graph API
description: Configure Microsoft Entra Private Access using the Microsoft Graph API.
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: nbeesetti
ms.topic: conceptual
ms.localizationpriority: medium
ms.prod: applications
ms.date: 02/22/2024
---

# Configure Microsoft Entra Private Access using the Microsoft Graph API

Microsoft Entra Private Access supports `TCP` and `UDP` protocols to connect to backend applications. An application can be configured to support `TCP`, `UDP`, or both. Configuration can be done in the Microsoft Entra admin center or through the Microsoft Graph Application Programming Interface (API).

In this article, you learn how to configure Microsoft Entra using the Microsoft Graph API.

## Prerequisites
Install and configure the Microsoft Entra Private Access connector. For more information, see [Add an on-premises application for remote access through application proxy in Microsoft Entra ID](/entra/identity/app-proxy/application-proxy-add-on-premises-application).

An API client such as [Graph Explorer](https://aka.ms/ge), Postman, or create your own client app to call Microsoft Graph.

An account with the [Application Administrator](/entra/identity/role-based-access-control/permissions-reference.md#application-administrator) role with the delegated permission `Directory.ReadWrite.All`.

## Step 1: Create a custom application

In this tutorial, you use an application template to create an instance of a custom application and service principal in your tenant for management. The template ID for a custom application is `8adf8e6e-67b2-4cf2-a259-e3dc5476c621`.

Record the `objectId` and `appId` of the application to use later in the tutorial.  

In the example, replace the `displayName` value with a name for your Enterprise/Quick Access application.

### Sample request

```
POST https://graph.microsoft.com/beta/applicationTemplates/{templateID} /instantiate 
{ 
   “displayName”: “newPrivateApp” 
} 
```

### Response


## Step 2: Specify the type of private application (Quick Access or Enterprise Application) you wish to create and send the traffic from the application created to the Global Secure Access client

In the example, replace the value of `applicationType`. Use `nonwebapp` for Enterprise Applications and `quickaccessapp` for Quick Access Applications.

### Sample request

```
PATCH https://graph.microsoft.com/beta/applications/{objectID}
{
   “onPremisesPublishing”:{
   “applicationType”:”nonwebapp”,
   “isAccessibleViaZTNAClient”:”true”
   }
}
```

## Step 3: Assign a connector group to the newly created application

List the connectors that are available. Record the `id` of the connector you want to assign to a connector group.

### Sample request

```
GET https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectors
```

### Response

## Create a connectorGroup

In the example, replace `name` with the name of the new connector group.

Record the `id` that is returned to use in the next step.

 
### Sample Request

```
POST https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectorGroups 
{ 
   "name": "Private Access ConnectorGroup" 
} 
```

### Response


## Assign a connector to the connector group

### Sample request

```
POST https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectors/27049d40-6e0a-4c53-a171-daada6e9c8a0 /memberOf/$ref 
{ 
  "@odata.id":"https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectorGroups/daf709c2-6072-414f-b08c-bb2a80c631c" 
} 
```

### Response

## Assign the application to the connectorGroup

### Sample request

```
PUT https://graph.microsoft.com/beta/applications/{objectId}/connectorGroup/$ref 
{ 
   "@odata.id":"https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationproxy/connectorGroups/daf709c2-6072-414f-b08c-bb2a80c631c" 
} 
```

## Step 4: Add application segments to your Enterprise/Quick Access application

> [!NOTE]
> Use the `POST` command to create a new app segment. Use the `PATCH` command to update an existing app segment. Use the `DELETE` command to delete a specific app segment.  

In the example, create a new app segment. Replace `destinationHost` with the private app destination. Replace `destinationType` with either `tcp`, `udp`, or `tcp,udp` depending on the type of app segment.

### Sample request
```
POST https://graph.microsoft.com/beta/applications/{objectID}/onPremisesPublishing/segmentsConfiguration/Microsoft.graph.IpSegmentConfiguration/ApplicationSegments 

{
   "destinationHost": "test2.com",
   "destinationType": "fqdn",
   "port": 0,
   "ports": [
      "445-445",
      "3389-3389"
   ],
   "protocol": "tcp"
} 
```

### Response

## Update or delete an existing app segment

Use `PATCH` or `DELETE` command using the specified `segmentID`.

### Sample request 

```
PATCH https://graph.microsoft.com/beta/applications/{objectID}/onPremisesPublishing/segmentsConfiguration/Microsoft.graph.IpSegmentConfiguration/ApplicationSegments/{segmentID} 
{ 
   “protocol”:”tcp,udp” 
} 
```

## Step 5: Assign a user to the Enterprise or Quick Access application  

> [!NOTE]
> The `id` used in the `HTTP` request is the object ID of the user that can be found in the Entra Portal (**Entra Portal -> Identity -> Users -> Click on user -> Object ID**). The `principalId` used in the body of the request is the same as the `id` used in the `HTTP` request. The `resourceId` is the `id` of the application, also known as the object ID of the application in the Entra Portal. The `appRoleID` can be found through **Entra Portal -> App Registrations -> Find your specific app and click on it -> App Roles | Preview**.  

## Request

```
POST https://graph.microsoft.com/beta/users/{id}/appRoleAssignments 
{ 
  "principalId": "principalId-value",
  "resourceId": "resourceId-value",
  "appRoleId": "appRoleId-value"
}
```

## Response

## Step 6: Enable the Private Access traffic forwarding profile for your tenant

GET the Forwarding Profile ID for the Private Access Forwarding Profile.

Record the `id` from the private access traffic profile.

### Request

```
GET https://graph.microsoft.com/beta/networkAccess/forwardingProfiles
```

## Change the state of the Private Access forwarding profile

Set the state to `Enabled`.

### Request

```
PATCH https://graph.microsoft.com/beta/networkAccess/forwardingProfiles/{id} 
{
   “state”: “enabled”
}
```

### Response

## Step 7: Enable Private DNS  

> [!NOTE] 
> The capability is only available for Quick Access applications.

### Request

```
PATCH https://graph.microsoft.com/beta/applications/{object id}/onPremisesPublishing 
{ 
   "isDnsResolutionEnabled": “true” 
} 
```

### Response

## Create a new DNS suffix

### Request 

```
POST https://graph.microsoft-ppe.com/beta/applications/{objectID}/onPremisesPublishing/segmentsConfiguration/microsoft.graph.IpSegmentConfiguration/ApplicationSegments 
{ 
   "destinationHost": "app1.dns.com", 
   "destinationType": "dnsSuffix" 
} 
```

## Related content

- [What is global secure access?](/entra/global-secure-access/overview-what-is-global-secure-access)
- [About Microsoft Entra Private Access](/entra/global-secure-access/concept-private-access)
