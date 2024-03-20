---
title: "Get trainingCampaign"
description: "Read the properties and relationships of a trainingCampaign object."
author: "akgraph"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get trainingCampaign

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [trainingCampaign](../resources/trainingcampaign.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "trainingcampaign-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/trainingcampaign-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/attackSimulation/trainingCampaigns/{trainingCampaignId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [trainingCampaign](../resources/trainingcampaign.md) object in the response body.

## Examples

### Example 1: Get a training campaign

The following example shows how to get an attack simulation campaign for a tenant.

#### Request

<!-- {
  "blockType": "request",
  "name" : "get_trainingcampaign"
}-->

``` http
GET https://graph.microsoft.com/beta/security/attackSimulation/trainingCampaigns/f1b13829-3829-f1b1-2938-b1f12938b1a
```

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.trainingCampaign",
  "name" : "get_trainingcampaign"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "id": "81c59451-2929-5b39-86f0-5a2b15f1314f",
    "displayName": "graph toc update 2",
    "description": "Graph Test",
    "createdDateTime": "2024-02-18T08:36:07.6534871Z",
    "lastModifiedDateTime": "2024-02-19T08:00:01.9417887Z",
    "endUserNotificationSetting": null,
    "includedAccountTarget": null,
    "excludedAccountTarget": null,
    "trainingSetting": null,
    "report": null,
    "campaignSchedule": {
        "launchDateTime": "2024-02-18T08:37:44Z",
        "completionDateTime": "2024-02-19T07:59:44Z",
        "status": "completed"
    },
    "createdBy": {
        "email": "attacksim@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com",
        "id": "478a22cd-aecc-41df-b995-88c8de17aaf5",
        "displayName": "attacksim"
    },
    "lastModifiedBy": {
        "email": "attacksim@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com",
        "id": "478a22cd-aecc-41df-b995-88c8de17aaf5",
        "displayName": "attacksim"
    }
}
```

### Example 2: Get included account targets

The following example shows how to get included account targets (users) for a Training campaign for a tenant.

#### Request

<!-- {
  "blockType": "request",
  "name" : "get_trainingcampaign_includedtargets"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/attackSimulation/trainingCampaigns/f1b13829-3829-f1b1-2938-b1f12938b1a/includedAccountTarget
```

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accountTargetContent",
  "name" : "get_trainingcampaign_includedtargets"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.addressBookAccountTargetContent",
  "type": "addressBook",
  "accountTargetEmails": [
    "john@contoso.com"
  ]
}
```

### Example 3: Get excluded account targets

The following example shows how to get the excluded account targets (users) for a Training campaign for a tenant.

#### Request

<!-- {
  "blockType": "request",
  "name" : "get_trainingcampaign_excludedtargets"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/attackSimulation/trainingCampaigns/f1b13829-3829-f1b1-2938-b1f12938b1a/excludedAccountTarget
```

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accountTargetContent",
  "name" : "get_trainingcampaign_excludedtargets"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.addressBookAccountTargetContent",
  "type": "addressBook",
  "accountTargetEmails": [
    "alie@contoso.com"
  ]
}
```

### Example 4: Get training setting

The following example shows how to get training setting details for a training campaign.

#### Request

<!-- {
  "blockType": "request",
  "name" : "get_trainingcampaign_training"
}
-->

``` http
GET https://graph.microsoft.com/beta/security/attackSimulation/trainingCampaigns/f1b13829-3829-f1b1-2938-b1f12938b1a/trainingSetting
```

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.trainingSetting",
  "name" : "get_trainingcampaign_training"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "trainingCompletionDuration": "0",
  "completionDateTime": "2024-02-19T07:59:44Z",
  "settingType": "microsoftManaged"
}
```

### Example 5: Get end user notification setting 

The following example shows how to get end user notification setting details for a training campaign.

#### Request

<!-- {
  "blockType": "request",
  "name" : "get_trainingcampaign_eun"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/attackSimulation/trainingCampaigns/f1b13829-3829-f1b1-2938-b1f12938b1a/endUserNotificationSetting
```

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.endUserNotificationSetting",
  "name" : "get_trainingcampaign_eun"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "settingType": "trainingSelected",
  "positiveReinforcement": null,
  "notificationPreference": "microsoft",
  "trainingAssignment" : {
    "deliveryFrequency": "unknown",
    "defaultLanguage": "en",
    "endUserNotification": {
        "id": "36fb4dc1-7c37-4b96-9096-12e6d6014fae",
        "displayName": "Microsoft default training only campaign-training assignment notification"
    }
  },
    "trainingReminder" : {
    "deliveryFrequency": "weekly",
    "defaultLanguage": "en",
    "endUserNotification": {
        "id": "fe521249-9901-4584-a987-026a9980c58e",
        "displayName": "Microsoft default training only campaign-training reminder notification"
      }
  }
}
```