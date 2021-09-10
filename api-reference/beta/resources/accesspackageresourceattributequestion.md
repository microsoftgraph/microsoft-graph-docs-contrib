---
title: "accessPackageResourceAttributeQuestion resource type"
description: "A question provided to an end user, for the purpose of obtaining an attribute value to be passed to the end system and/or request approver"
author: "markwahl-msft"
localization_priority: Normal
ms.prod: "Governance"
doc_type: resourcePageType
---

# accessPackageResourceAttributeQuestion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A question provided to an end user, for the purpose of obtaining an attribute value to be passed to the end system and/or request approver. 

Inherits from [accessPackageAttributeSource](../resources/accesspackageattributesource.md).

## Properties
None.

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageAttributeQuestion"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageAttributeQuestion",
  "question": {
    "@odata.type": "microsoft.graph.accessPackageQuestion"
  }
}
```
## Example 2: Get accessPackagePolicy

### Request

```http
GET /identityGovernance/entitlementManagement/accessPackageAssignmentPolicies('b25419bb-5ffc-ea11-b207-c8d9d21f4e9a')
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

```HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://localhost:44319/api/v1/$metadata#accessPackageAssignmentPolicies/$entity",
    "id": "b25419bb-5ffc-ea11-b207-c8d9d21f4e9a",
    "accessPackageId": "b15419bb-5ffc-ea11-b207-c8d9d21f4e9a",
    "displayName": "Initial Policy",
    "description": "Initial Policy",
    "isDenyPolicy": false,
    "canExtend": false,
    "durationInDays": 365,
    "expirationDateTime": null,
    "isCustomAssignmentScheduleAllowed": true,
    "createdBy": "blake@contosodeb.ccsctp.net",
    "createdDateTime": "2020-09-21T23:11:09.01-07:00",
    "modifiedBy": "blake@contosodeb.ccsctp.net",
    "modifiedDateTime": "2021-07-08T23:58:21.973-07:00",
    "countOfUsersIncludedInPolicy": null,
    "activeAssignmentCount": 0,
    "policyAssignmentType": "RequestBased",
    "expiration": {
        "endDateTime": null,
        "duration": "P365D",
        "type": "AfterDuration"
    },
    "requestorSettings": {
        "scopeType": "AllExistingDirectoryMemberUsers",
        "isOnBehalfAllowed": false,
        "acceptRequests": false,
        "allowedRequestors": [],
        "requestorScope": []
    },
    "requestApprovalSettings": {
        "isApprovalRequired": false,
        "isApprovalRequiredForUpdate": false,
        "isApprovalRequiredForExtension": false,
        "isRequestorJustificationRequired": false,
        "approvalMode": "NoApproval",
        "approvalStages": []
      },
    "accessReviewSettings": null,
    "assignmentReviewSettings": null,
    "questions": [
        {
            "@odata.type": "#Microsoft.IGAELM.EC.FrontEnd.ExternalModel.textInputQuestion",
            "id": "b061bfe7-4591-492e-8fe1-e0acf685ca54",
            "isRequired": false,
            "isAnswerEditable": null,
            "sequence": 0,
            "isSingleLineQuestion": true,
            "text": {
                "defaultText": "Would you like a cookie?",
                "localizedTexts": []
            }
        }
    ],
    "notificationSettings": {
        "isAllNotificationDisabled": false
    },
    "autoAssignmentSettings": null
}
```