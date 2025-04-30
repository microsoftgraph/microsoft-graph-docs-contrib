---
title: "Get callAiInsight"
description: "Get a callAiInsight object associated with a scheduled onlineMeeting."
author: "Anjali-Patle"
ms.date: 04/29/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Get callAiInsight

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [callAiInsight](../resources/callaiinsight.md) object associated with an [onlineMeeting](../resources/onlinemeeting.md). This API doesn't support getting call AI insights for channel meetings.

This API returns the metadata and content of the single set of AI insights associated with the online meeting.

> [!NOTE]
>
> - This API has license requirements. For more information, see [License requirements for meeting AI insights APIs](/graph/teams-licenses#license-requirements-for-meeting-ai-insights-apis).
> - This API works differently in one or more national clouds. For more information, see [Microsoft Teams API implementation differences in national clouds](/graph/teamwork-national-cloud-differences).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored", "name": "callaiinsight_get" } -->

| Permission type                        | Least privileged permissions    | Higher privileged permissions |
| :------------------------------------- | :------------------------------ | :---------------------------- |
| Delegated (work or school account)     | OnlineMeetingAiInsight.Read.All | Not available.                |
| Delegated (personal Microsoft account) | Not supported.                  | Not supported.                |
| Application                            | Not supported.                  | Not supported.                |

> [!NOTE]
> This API only works for a meeting that hasn't expired. For more information, see [Limits and specifications for Microsoft Teams](/microsoftteams/limits-specifications-teams#meeting-expiration).

## HTTP request

Get a single set of AI insights for an online meeting.

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /copilot/users/{userId}/onlineMeetings/{onlineMeetingId}/aiInsights/{aiInsightId}
```

## Optional query parameters

This method supports the `$select` [OData query parameter](/graph/query-parameters) to customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [callAiInsight](../resources/callaiinsight.md) object in the response body.

## Examples

### Example 1: Get a call AI insight

The following example shows how to get a single set of AI insights for an online meeting.

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_callAiInsight",
  "sampleKeys": ["b935e675-5e67-48b9-8d45-249d5f88e964", "MSpiOTM...", "VjEjI1..."]
}
-->
``` http
GET https://graph.microsoft.com/beta/copilot/users/b935e675-5e67-48b9-8d45-249d5f88e964/onlineMeetings/MSpiOTM.../aiInsights/VjEjI1...
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.callAiInsight"
}
-->

``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('b935e675-5e67-48b9-8d45-249d5f88e964')/onlineMeetings('MSpiOTM...')/aiInsights/$entity",
  "id": "VjEjI1...",
  "callId": "af630fe0-04d3-4559-8cf9-91fe45e36296",
  "contentCorrelationId": "bc842d7a-2f6e-4b18-a1c7-73ef91d5c8e3",
  "createdDateTime": "2024-05-27T08:17:10.7261294Z",
  "endDateTime": "2024-05-27T08:32:10.7261294Z",
  "meetingNotes": [
    {
      "title": "Introducing Project Objectives and Key Stakeholders",
      "text": "The stakeholders present included representatives from each department involved in the project, ensuring alignment and clear communication channels from the start.",
      "subpoints": [
        {
          "title": "Discussion on action items",
          "text": "Action items were assigned to team members, and a follow-up meeting schedule was established."
        }
      ]
    }
  ],
  "actionItems": [
    {
      "title": "Finalize Project Timeline",
      "text": "Review and finalize the project timeline to ensure alignment with stakeholder expectations and resource availability.",
      "ownerDisplayName": "Bella Smith",
    },
    {
      "title": "Prepare Presentation Draft",
      "text": "Draft a presentation outlining project goals, objectives, and progress updates for review by the project stakeholders.",
      "ownerDisplayName": "Bella Smith",
    },
  ],
  "viewpoint": {
    "mentionEvents": [
      {
        "speaker": {
            "application": null,
            "device": null,
            "user": {
                "@odata.type": "#Microsoft.Teams.GraphSvc.teamworkUserIdentity",
                "id": "9a7608d3-53e4-4a92-804f-ef43f1e5f5b5",
                "displayName": "John Smith",
                "userIdentityType": "aadUser",
                "tenantId": "d1aeb56e-5a25-4d91-a4f6-0f5e6a50d887"
            }
        },
        "eventDateTime": "2024-05-21T09:00:00",
        "transcriptUtterance": "We need to get approval from Sarah Johnson before proceeding with the budget allocation."
      },
      {
        "speaker": {
            "application": null,
            "device": null,
            "user": {
                "@odata.type": "#Microsoft.Teams.GraphSvc.teamworkUserIdentity",
                "id": "6aeb9f22-c986-4835-9617-9e5932bc8250",
                "displayName": "Emily Davis",
                "userIdentityType": "aadUser",
                "tenantId": "d1aeb56e-5a25-4d91-a4f6-0f5e6a50d887"
            }
        },
        "eventDateTime": "2024-05-21T09:15:00",
        "transcriptUtterance": "Sarah Johnson suggested reaching out to potential vendors for the upcoming project."
      }
    ]
  }
}
```

### Example 2: Get a call AI insight from a corresponding transcript using contentCorrelationId

The following example shows how to get a single set of AI insights of an online meeting corresponding to a [transcript](../resources/calltranscript.md) using the **contentCorrelationId** property.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_callAiInsight_using_contentCorrelationId",
  "sampleKeys": ["MSoxM..."]
}
-->

```http
GET https://graph.microsoft.com/beta/me/onlineMeetings/MSoxM.../aiInsights?$filter=contentcorrelationId+eq+'bc842d7a-2f6e-4b18-a1c7-73ef91d5c8e3'
```

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.callAiInsight"
}
-->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('1273a016-201d-4f95-8083-1b7f99b3edeb')/onlineMeetings('MSoxM...')/aiInsights",
  "@odata.count": 1,
  "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET me/onlineMeetings('<key>')/aiInsights?$select=callId,content",
  "value": [
    {
      "id": "VjEjI1...",
      "callId": "af630fe0-04d3-4559-8cf9-91fe45e36296",
      "contentCorrelationId": "bc842d7a-2f6e-4b18-a1c7-73ef91d5c8e3",
      "createdDateTime": "2024-05-27T08:17:10.7261294Z",
      "endDateTime": "2024-05-27T08:32:10.7261294Z"
    }
  ]
}
```
