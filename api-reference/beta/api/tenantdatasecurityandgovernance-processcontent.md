---
title: "tenantDataSecurityAndGovernance: processContent"
description: "Process content from an agent interaction against tenant data protection policies."
author: "psanyal"
ms.date: 09/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# tenantDataSecurityAndGovernance: processContent

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Process content from an agent interaction against tenant data protection policies. The protected agent is identified in **protectedAppMetadata.applicationLocation**, and the other parties in the interaction are identified in **activityMetadata.participants**.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "tenantdatasecurityandgovernance_processcontent" } -->
[!INCLUDE [permissions-table](../includes/permissions/tenantdatasecurityandgovernance-processcontent-permissions.md)]

The `Content.Process.All` permission requires administrator consent.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /security/dataSecurityAndGovernance/processContent
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|
|If-None-Match|The ETag returned by [tenantProtectionScopeContainer: compute](tenantprotectionscopecontainer-compute.md). Optional. Use this header to determine whether the cached policy state changed.|

## Request body

In the request body, supply a JSON object with the following parameter.

|Parameter|Type|Description|
|:---|:---|:---|
|contentToProcess|[processContentRequest](../resources/processcontentrequest.md)|The content and metadata to evaluate. Required. For agent evaluation, set **evaluationScope.type** to `agent`; specify a [policyLocationAgent](../resources/policylocationagent.md) in **protectedAppMetadata.applicationLocation**; and include at least one concrete participant in **activityMetadata.participants**.|

## Response

If successful, this action returns a `200 OK` response code and a [processContentResponse](../resources/processcontentresponse.md) object in the response body.

### Response headers

|Name|Description|
|:---|:---|
|ETag|Indicates the current policy state. If the ETag changes and **protectionScopeState** is `modified`, refresh the cached scopes by calling [tenantProtectionScopeContainer: compute](tenantprotectionscopecontainer-compute.md).|

## Examples

### Request

The following example evaluates a human prompt before it enters a protected agent.
<!-- {
  "blockType": "request",
  "name": "tenantdatasecurityandgovernance_processcontent_agent"
}
-->
```http
POST https://graph.microsoft.com/beta/security/dataSecurityAndGovernance/processContent
Authorization: Bearer {token}
Content-Type: application/json
If-None-Match: "8936456543210"

{
  "contentToProcess": {
    "contentEntries": [
      {
        "@odata.type": "microsoft.graph.processConversationMetadata",
        "identifier": "d01b09f7-b666-4ec9-9819-217a68ef1345",
        "name": "Human prompt",
        "content": {
          "@odata.type": "microsoft.graph.textContent",
          "data": "Summarize this confidential document."
        },
        "correlationId": "3691e553-9db2-4b7b-a84f-3d248d3c8335",
        "sequenceNumber": 1,
        "isTruncated": false,
        "createdDateTime": "2026-08-05T17:00:00Z",
        "modifiedDateTime": "2026-08-05T17:00:00Z"
      }
    ],
    "activityMetadata": {
      "activity": "uploadText",
      "participants": [
        {
          "@odata.type": "microsoft.graph.userParticipant",
          "value": "11111111-1111-1111-1111-111111111111"
        }
      ]
    },
    "integratedAppMetadata": {
      "name": "Agent365.Sydney",
      "version": "2026.8.5.1"
    },
    "deviceMetadata": {},
    "protectedAppMetadata": {
      "applicationLocation": {
        "@odata.type": "microsoft.graph.policyLocationAgent",
        "value": "22222222-2222-2222-2222-222222222222",
        "agentMetadata": {
          "agentAdministrativeUnitId": "bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb",
          "agentBlueprintId": "aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa",
          "agentCategory": "Agents.Foundry.MicrosoftAzure",
          "agentOwner": "owner@contoso.com",
          "agentPublisher": "Contoso",
          "altAgentIds": [
            "sydney-agent-22222222"
          ],
          "isEntraAgentId": true
        }
      }
    },
    "evaluationScope": {
      "type": "agent"
    }
  }
}
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "name": "tenantdatasecurityandgovernance_processcontent_agent",
  "@odata.type": "microsoft.graph.processContentResponse"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json
ETag: "8936456543210"

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.processContentResponse",
  "@odata.type": "#microsoft.graph.processContentResponse",
  "protectionScopeState": "notModified",
  "policyActions": [
    {
      "@odata.type": "#microsoft.graph.restrictAccessAction",
      "action": "restrictAccess",
      "restrictionAction": "block"
    }
  ],
  "processingErrors": []
}
```
