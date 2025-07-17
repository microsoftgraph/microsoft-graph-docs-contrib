---
title: "accessPackageAssignmentRequestRequirements resource type"
description: "Identifies the requirements necessary to request the specified access package."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 03/06/2024
---

# accessPackageAssignmentRequestRequirements resource type

Namespace: microsoft.graph

Represents requirements that a caller must fulfill in order to successfully create an **accessPackageAssignmentRequest** for the **accessPackage** specified as part of the URL. Requirements are determined by evaluating policies associated with the **accessPackage**. 

## Properties
| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| existingAnswers | [accessPackageAnswer](../resources/accesspackageanswer.md) collection  | Answers that have already been provided. |
| isApprovalRequired | Boolean | Indicates whether a request must be approved by an approver. |
| isApprovalRequiredForExtension  | Boolean | Indicates whether approval is required when a user tries to extend their access. |
| isCustomAssignmentScheduleAllowed | Boolean | Indicates whether the requestor is allowed to set a custom schedule. |
| isRequestorJustificationRequired | Boolean | Indicates whether a requestor must supply justification when submitting an assignment request. |
| policyDescription | String | The description of the policy that the user is trying to request access using.  |
| policyDisplayName | String | The display name of the policy that the user is trying to request access using. |
| policyId | String | The identifier of the policy that these requirements are associated with. This identifier can be used when creating a new assignment request. |
| questions | [accessPackageQuestion](../resources/accesspackagequestion.md) collection | Questions that are configured on the policy. The questions can be required or optional; callers can determine whether a question is required or optional based on the **isRequired** property on **accessPackageQuestion**. |
| schedule | [requestSchedule](../resources/requestschedule.md) | Schedule restrictions enforced, if any. |
|verifiableCredentialRequirementStatus|[verifiableCredentialRequirementStatus](../resources/verifiablecredentialrequirementstatus.md)|The status of the process to process the verifiable credential, if any.|

## Relationships
None.

## JSON representation

The following is a JSON representation of the type.

<!-- { 
  "blockType": "resource", 
  "@odata.type": "microsoft.graph.accessPackageAssignmentRequestRequirements" 
}-->

``` json
{
  "@odata.type": "#microsoft.graph.accessPackageAssignmentRequestRequirements",
  "policyId": "String",
  "policyDisplayName": "String",
  "policyDescription": "String",
  "isApprovalRequired": false,
  "isApprovalRequiredForExtension": false,
  "isCustomAssignmentScheduleAllowed": false,
  "isRequestorJustificationRequired": false,
  "schedule": {
    "@odata.type": "microsoft.graph.requestSchedule"
  },
  "questions": [
    {
      "@odata.type": "microsoft.graph.accessPackageQuestion"
    }
  ],
  "existingAnswers": [
    {
      "@odata.type": "microsoft.graph.accessPackageAnswerString"
    }
  ],
  "verifiableCredentialRequirementStatus": {
    "@odata.type": "microsoft.graph.verifiableCredentialRequirementStatus"
  }
}
```
