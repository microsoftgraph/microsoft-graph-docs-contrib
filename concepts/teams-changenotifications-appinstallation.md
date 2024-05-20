---
title: "Get change notifications for app installation using Microsoft Graph"
description: "Learn how to get notifications for app installation using Microsoft Graph APIs."
author: "v-sdhakshina"
ms.localizationpriority: high
ms.subservice: "teams"
ms.custom: scenarios:getting-started
---

# Get change notifications for app installation using Microsoft Graph

Change notifications allow you to subscribe to Teams app related events such as installation, upgrade, and uninstallation. You can get notified whenever the Teams app is installed, upgraded, or deleted from a team, chat, or personal scope. For more information, see [teamsAppInstallation](/graph/api/resources/teamsappinstallation).

If the user needs any additional information, they can use Teams app ID and app installation ID returned in the notification payload to fetch the necessary information separately.

## Subscribe to Teams app installation

To get change notifications for Teams app installation, subscribe to `/appCatalogs/teamsApps/{teams-app-id}/installations`.

### Permissions

To subscribe to Teams apps installation, you can use the following specified scope or all scopes along with the corresponding permissions. For more information on including how to choose permissions, see [Permissions](/graph/permissions-reference).

#### Personal scope

To get change notifications for Teams app installation in personal scope, subscribe to `/appCatalogs/teamsApps/{teams-app-id}/installations?$filter=(scopeInfo/scope eq 'personal')` with one of the following permissions:

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | TeamsAppInstallation.ReadForUser.All, TeamsAppInstallation.ReadWriteForUser.All, TeamsAppInstallation.ReadWriteAndConsentForUser.All, TeamsAppInstallation.ReadWriteSelfForUser.All, TeamsAppInstallation.Read.User* |

*Represents resource-specific consent (RSC) permissions.

#### Team scope

To get change notifications for Teams app installation in team scope, subscribe to `/appCatalogs/teamsApps/{teams-app-id}/installations?$filter=(scopeInfo/scope eq 'team')` with one of the following permissions:

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | TeamsAppInstallation.ReadForTeam.All, TeamsAppInstallation.ReadWriteForTeam.All, TeamsAppInstallation.ReadWriteAndConsentForTeam.All, TeamsAppInstallation.ReadWriteSelfForTeam.All, TeamsAppInstallation.ReadWriteAndConsentSelfForTeam.All, TeamsAppInstallation.Read.Team* |

*Represents RSC permissions.

#### Chat scope

To get change notifications for Teams app installation in chat scope, subscribe to `/appCatalogs/teamsApps/{teams-app-id}/installations?$filter=(scopeInfo/scope eq 'groupChat')` with one of the following permissions:

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | TeamsAppInstallation.ReadForChat.All, TeamsAppInstallation.ReadWriteForChat.All, TeamsAppInstallation.ReadWriteAndConsentForChat.All, TeamsAppInstallation.ReadWriteSelfForChat.All, TeamsAppInstallation.ReadWriteAndConsentSelfForChat.All, TeamsAppInstallation.Read.Chat* |

*Represents RSC permissions.

#### All scopes

To get change notifications for Teams app installation in all scope, subscribe to `/appCatalogs/teamsApps/{teams-app-id}/installations` with one of the following permission:

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | TeamsAppInstallation.Read.All |

### Examples

The following example shows how to subscribe for Teams app installation notifications in all scopes:

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json
{
"changeType": "created,updated,deleted",
"resource": "/appCatalogs/teamsApps/19d56a5e-86a2-489b-aa5c-88a60f92b83e/installations,
"notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
"includeResourceData": true,
"encryptionCertificate": "{base64encodedCertificate}",
"encryptionCertificateId": "{customId}",
"expirationDateTime": "2023-11-16T11:00:00.0000000Z",
"clientState": "{secretClientState}"
}
```

To subscribe for a specific scope, you must declare the scope `$filter` query parameter while you create the subscription. You can do this by adding it to the subscription resource:

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

> [!NOTE]
> Ensure that the permissions you need to provide vary based on the scope. For example, when the subscription resource is configured for both personal and team scopes, it is mandatory to have at least one permission from each scope.

For apps that use RSC permissions, you must declare `useResourceSpecificConsentBasedAuthorization=true` query parameter while you create subscription by adding it to the subscription resource:

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

> [!NOTE]
> The default value for `useResroouceSpecificConsentBasedAuthorization` query parameter is `false`. If it's not declared, it indicates that you don't intend to use RSC permission for your app.

### Notifications with resource data

The following is the payload for notifications with resource data:

```json
{
    "value": [{ 
        "subscriptionId": "7ac50e0f-4526-44bc-8e75-834c16143e5d", 
        "changeType": "created", 
        "clientState": "<<--SpecifiedClientState-->>", 
        "subscriptionExpirationDateTime": "2023-11-16T11:00:00.0000000Z", 
        "resource": "appCatalogs/teamsApps('19d56a5e-86a2-489b-aa5c-88a60f92b83e')/installations('N2VlYjVhOTUtZjYwMi00ODYxLWFiNjctNDk3MTRmYTVhMDIwIyMxYzI1NmE2NS04M2E2LTRiNWMtOWNjZi03OGY4YWZiNmYxZTg=')", 
        "resourceData": { 
            "id": "N2VlYjVhOTUtZjYwMi00ODYxLWFiNjctNDk3MTRmYTVhMDIwIyMxYzI1NmE2NS04M2E2LTRiNWMtOWNjZi03OGY4YWZiNmYxZTg=", 
            "@odata.type": "#Microsoft.Graph.teamsAppInstallation", 
            "@odata.id": "appCatalogs/teamsApps('19d56a5e-86a2-489b-aa5c-88a60f92b83e')/installations('N2VlYjVhOTUtZjYwMi00ODYxLWFiNjctNDk3MTRmYTVhMDIwIyMxYzI1NmE2NS04M2E2LTRiNWMtOWNjZi03OGY4YWZiNmYxZTg=')" 
        }, 
        "encryptedContent": { 
            "data": "<<--EncryptedContent-->", 
            "dataKey": "<<--EnryptedDataKeyUsedForEncryptingContent-->>", 
            "encryptionCertificateId": "<<--IdOfTheCertificateUsedForEncryptingDataKey-->>", 
            "encryptionCertificateThumbprint": "<<--ThumbprintOfTheCertificateUsedForEncryptingDataKey-->>" 
        }, 
        "tenantId": "<<--TenantForWhichNotificationWasSent-->>" 
    }], 
    "validationTokens": ["<<--ValidationTokens-->>"] 
}
```

The following is the decrypted notification payload. The payload adheres to the [teamsAppInstallation](/graph/api/resources/teamsappinstallation) schema.

```json
{
"id":"MTk6NDlkZWMzODRmZWYyNDM1YTkyODI5ODUyNjA4ZDUyYzNAdGhyZWFkLnYyIyM5NWVhZTRmNi0zZmNjLTQyOWItOWEzMC1kYWY5M2Y4ZjBiYjQ=", 
"teamsApp":{ 
"id":"95eae4f6-3fcc-429b-9a30-daf93f8f0bb4" 
}, 
"scopeInfo":{ 
"@odata.type":"#microsoft.graph.groupChatTeamsAppInstallationScopeInfo", 
"chatId":"19:49dec384fef2435a92829852608d52c3@thread.v2", 
"scope":"groupChat" 
} 
}
```

## See also

[Microsoft Graph change notifications](change-notifications-overview.md)
