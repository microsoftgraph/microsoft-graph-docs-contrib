---
title: "processContent"
description: "Process content against data protection policies in the context of the current user."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# processContent

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Evaluate one or more pieces of content against applicable data protection policies (like DLP) in the context of the current user, their device, the application they are using, and the activity they are performing. This action returns the set of actions the calling application should enforce.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "userdatasecurityandgovernance-processcontent-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/userdatasecurityandgovernance-processcontent-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/dataSecurityAndGovernance/processContent
POST /users/{usersId}/dataSecurityAndGovernance/processContent
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|contentToProcess|[processContentRequest](../resources/processcontentrequest.md)|Required. The object containing the content entries and metadata (activity, device, application) to be evaluated for the specified user.|

## Response

If successful, this action returns a `200 OK` response code and a [processContentResponse](../resources/processcontentresponse.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "userdatasecurityandgovernancethis.processcontent"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/dataSecurityAndGovernance/processContent
Content-Type: application/json

{
  "contentToProcess": {
    "contentEntries": [
      {
        "@odata.type": "#microsoft.graph.process.ConversationMetadata",
        "identifier": "message_12345",
        "content": {
           "@odata.type": "#microsoft.graph.textContent",
           "data": "CONFIDENTIAL: Project Falcon details enclosed. SSN: 123-45-6789"
        },
        "name": "Chat Message",
        "correlationId": "conversation_abc",
        "sequenceNumber": 1,
        "length": 70,
        "isTruncated": false,
        "createdDateTime": "2024-07-29T15:00:00Z",
        "modifiedDateTime": "2024-07-29T15:00:00Z"
      }
    ],
    "activityMetadata": {
      "activity": "uploadText",
      "applicationLocation": "https://thirdparty.contoso.com/chat"
    },
    "deviceMetadata": {
      "deviceType": "Desktop",
      "operatingSystemSpecifications": {
        "operatingSystemPlatform": "Windows",
        "operatingSystemVersion": "10.0.19045"
      }
    },
    "integratedAppMetadata": {
      "name": "Contoso Browser Helper",
      "version": "1.2.3"
    }
  }
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.processContentResponse"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "microsoft.graph.processContentResponse"
  "protectionScopeState": "notModified",
  "policyActions": [
    {
      "@odata.type": "#microsoft.browserRestrictionAction",
      "action": "browserRestriction",
      "restrictionAction": "block",
      "message": "Uploading content with SSNs to this site is blocked by organizational policy.",
      "triggers": ["upload"], // Conceptual trigger
      "webSiteGroupId": "website-group-guid-2"
    }
  ],
  "processingErrors": []
}
```
