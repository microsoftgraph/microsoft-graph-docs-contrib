---
title: "Get change notifications for app installation using Microsoft Graph"
description: "Learn how to get notifications for app installation using Microsoft Graph APIs."
author: "v-sdhakshina"
ms.localizationpriority: high
ms.subservice: "teams"
ms.custom: scenarios:getting-started
---

# Get change notifications for app installation using Microsoft Graph

Change notifications allow you to subscribe to events related to app installation, upgrade, and uninstallation. You can get notified whenever the [Teams app installation](/graph/api/resources/teamsappinstallation) and where the event took place.

This article describes scenarios for the **Teams app installation** resources. For more information, see [Change notifications for Microsoft Teams resources](teams-change-notification-in-microsoft-teams-overview.md).

If a customer needs any additional information, they can use Teams app ID and app installation ID returned in the notification payload to fetch the necessary information separately.

## Subscribe to Teams app installation

To get change notifications for app installation in Teams, subscribe to `/appCatalogs/teamsApps/{teams-app-id}/installations`.

### Permissions

One of the following permissions is required to subscribe to `/appCatalogs/teamsApps/{teams-app-id}/installations`. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | TeamsAppInstallation.Read.All, TeamsAppInstallation.ReadSelected.All|

### Example

The following example shows how to subscribe for app installation in Teams.

```http
POST https://graph.microsoft.com/v1.0/subscriptions

Content-Type: application/json
{
"changeType": "created,updated,deleted",
"resource": "/appCatalogs/teamsApps/19d56a5e-86a2-489b-aa5c-88a60f92b83e/installations?$filter= (scopeInfo/scope eq 'personal') or (scopeInfo/scope eq 'team')",
"notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
"includeResourceData": true,
"encryptionCertificate": "{base64encodedCertificate}",
"encryptionCertificateId": "{customId}",
"expirationDateTime": "2023-11-16T11:00:00.0000000Z",
"clientState": "{secretClientState}"
}
```

If an app only has scope specific app permissions, then you must specify the scope filter on the resource while creating subscription:

```http
POST https://graph.microsoft.com/v1.0/subscriptions

Content-Type: application/json 
{ 
  "changeType": "created,updated,deleted", 
  "resource": "/appCatalogs/teamsApps/19d56a5e-86a2-489b-aa5c-88a60f92b83e/installations?$filter= (scopeInfo/scope eq 'personal') or (scopeInfo/scope eq 'team')", 
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications", 
  "includeResourceData": true, 
  "encryptionCertificate": "{base64encodedCertificate}", 
  "encryptionCertificateId": "{customId}", 
  "expirationDateTime": "2023-11-16T11:00:00.0000000Z", 
  "clientState": "{secretClientState}" 
} 
```

If you want an app rely on resource specific consent (RSC) permissions, you must declare `useResourceSpecificConsentBasedAuthorization=true` query parameter while subscription creation by appending to the subscription resource:

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json 
{
  "changeType": "created,updated,deleted", 
  "resource": "/appCatalogs/teamsApps/19d56a5e-86a2-489b-aa5c-88a60f92b83e/installations?useResourceSpecificConsentBasedAuthorization=true", 
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications", 
  "includeResourceData": true, 
  "encryptionCertificate": "{base64encodedCertificate}", 
  "encryptionCertificateId": "{customId}", 
  "expirationDateTime": "2023-11-16T11:00:00.0000000Z", 
  "clientState": "{secretClientState}" 
}
```

The supported RSC permissions are:  

* TeamsAppInstallation.Read.Chat
* TeamsAppInstallation.Read.Group
* TeamsAppInstallation.Read.User

## See also

[Microsoft Graph change notifications](change-notifications-overview.md)
