---
title: "List governanceRoleAssignmentRequests"
description: "Retrieve a collection of governanceRoleAssignmentRequests. "
ms.localizationpriority: medium
doc_type: apiPageType
ms.subservice: "entra-id-governance"
author: "rkarim-ms"
ROBOTS: NOINDEX
ms.date: 08/02/2024
---

# List governanceRoleAssignmentRequests

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [pim-v2ResourceRoles-deprecation](../../includes/pim-v2ResourceRoles-deprecation.md)]

Retrieve a collection of [governanceRoleAssignmentRequests](../resources/governanceroleassignmentrequest.md). 

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
The following tables show the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### Azure resources

<!-- { "blockType": "permissions", "name": "governanceroleassignmentrequest_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/governanceroleassignmentrequest-list-permissions.md)]

<a name='azure-ad'></a>

### Microsoft Entra ID

<!-- { "blockType": "permissions", "name": "governanceroleassignmentrequest_list_2" } -->
[!INCLUDE [permissions-table](../includes/permissions/governanceroleassignmentrequest-list-2-permissions.md)]

### Groups

<!-- { "blockType": "permissions", "name": "governanceroleassignmentrequest_list_3" } -->
[!INCLUDE [permissions-table](../includes/permissions/governanceroleassignmentrequest-list-3-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
List a collection of [governanceRoleAssignmentRequests](../resources/governanceroleassignmentrequest.md) on a resource.
    
>**Note:** Besides the permission scope, the request requires the requestor to have at least one role assignment on the resource.

```http
GET /privilegedAccess/azureResources/resources/{resourceId}/roleAssignmentRequests
GET /privilegedAccess/azureResources/roleAssignmentRequests?$filter=resourceId+eq+'{resourceId}'
```
List a collection of [governanceRoleAssignmentRequests](../resources/governanceroleassignmentrequest.md) of mine.

```http
GET /privilegedAccess/azureResources/roleAssignmentRequests?$filter=subjectId+eq+'{myId}'
```

List a collection of [governanceRoleAssignmentRequests](../resources/governanceroleassignmentrequest.md) that are pending administrator decisions.
    
>**Note:** Besides the permission scope, this request requires the requestor to have at least one `Active` administrator role assignment (`owner` or `user access administrator`) on the resource.

```http
GET /privilegedAccess/azureResources/roleAssignmentRequests?$filter=status/subStatus+eq+'PendingAdminDecision'
```

## Optional query parameters
This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [governanceRoleAssignmentRequest](../resources/governanceroleassignmentrequest.md) objects in the response body.

## Example
<!-- {
  "blockType": "request",
  "name": "get_governanceroleassignmentrequests"
}-->
Administrators query pending role assignment requests for subscription Wingtip Toys - Prod.
##### Request

```http
GET https://graph.microsoft.com/beta/privilegedAccess/azureResources/roleAssignmentRequests?$filter=resourceId+eq+'e5e7d29d-5465-45ac-885f-4716a5ee74b5'
```
##### Response
The following example shows the response. 

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.governanceRoleAssignmentRequest",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#governanceRoleAssignmentRequests",
    "value": [
        {
            "id": "d75c65d8-9e66-44ff-b1cd-1ab0947fde1d",
            "resourceId": "e5e7d29d-5465-45ac-885f-4716a5ee74b5",
            "roleDefinitionId": "8b4d1d51-08e9-4254-b0a6-b16177aae376",
            "subjectId": "918e54be-12c4-4f4c-a6d3-2ee0e3661c51",
            "linkedEligibleRoleAssignmentId": "",
            "type": "UserRemove",
            "assignmentState": "Active",
            "requestedDateTime": "2018-01-09T23:41:34.367Z",
            "reason": "Deactivation request",
            "schedule": null,
            "status": {
                "status": "Closed",
                "subStatus": "Revoked",
                "statusDetails": []
            }
        },
        {
            "id": "38f42071-3e81-4191-8c0b-11450fb6b547",
            "resourceId": "e5e7d29d-5465-45ac-885f-4716a5ee74b5",
            "roleDefinitionId": "8b4d1d51-08e9-4254-b0a6-b16177aae376",
            "subjectId": "918e54be-12c4-4f4c-a6d3-2ee0e3661c51",
            "linkedEligibleRoleAssignmentId": "",
            "type": "UserAdd",
            "assignmentState": "Active",
            "requestedDateTime": "2018-01-10T20:58:09.163Z",
            "reason": "test activations",
            "status": {
                "status": "Closed",
                "subStatus": "Provisioned",
                "statusDetails": [
                    {
                        "key": "EligibilityRule",
                        "value": "Grant"
                    },
                    {
                        "key": "ExpirationRule",
                        "value": "Grant"
                    },
                    {
                        "key": "MfaRule",
                        "value": "Grant"
                    },
                    {
                        "key": "JustificationRule",
                        "value": "Grant"
                    },
                    {
                        "key": "ActivationDayRule",
                        "value": "Grant"
                    },
                    {
                        "key": "ApprovalRule",
                        "value": "Grant"
                    }
                ]
            },
            "schedule": {
                "type": "Once",
                "startDateTime": "2018-01-10T20:58:11.363914Z",
                "endDateTime": "0001-01-01T00:00:00Z",
                "duration": "PT5H"
            }
        },
        ...
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List governanceRoleAssignmentRequests",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
