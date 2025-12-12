---
title: "subjectRightsRequestStage enum type"
description: "Represents the stage of a subject rights request."
author: "skadam-msft"
ms.localizationpriority: medium
ms.date: 12/02/2025
ms.subservice: "compliance"
doc_type: enumPageType
---

# subjectRightsRequestStage enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the stage of a subject rights request. This enumeration is used by multiple resources.

The following table lists the members of an [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). Use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `approval`.

## Members

| Member | Description |
|:---|:---|
| contentRetrieval | The stage where content is being retrieved for the subject rights request.<br/><br/>Applies to: **stage** property of [subjectRightsRequestHistory](../resources/subjectrightsrequesthistory.md) and [subjectRightsRequestStageDetail](../resources/subjectrightsrequeststagedetail.md) |
| contentReview | The stage where content is being reviewed for the subject rights request.<br/><br/>Applies to: **stage** property of [subjectRightsRequestHistory](../resources/subjectrightsrequesthistory.md) and [subjectRightsRequestStageDetail](../resources/subjectrightsrequeststagedetail.md) |
| generateReport | The stage where a report is being generated for the subject rights request.<br/><br/>Applies to: **stage** property of [subjectRightsRequestHistory](../resources/subjectrightsrequesthistory.md) and [subjectRightsRequestStageDetail](../resources/subjectrightsrequeststagedetail.md) |
| contentDeletion | The stage where content is being deleted as part of the subject rights request.<br/><br/>Applies to: **stage** property of [subjectRightsRequestHistory](../resources/subjectrightsrequesthistory.md) and [subjectRightsRequestStageDetail](../resources/subjectrightsrequeststagedetail.md) |
| caseResolved | The stage where the subject rights request case has been resolved.<br/><br/>Applies to: **stage** property of [subjectRightsRequestHistory](../resources/subjectrightsrequesthistory.md) and [subjectRightsRequestStageDetail](../resources/subjectrightsrequeststagedetail.md) |
| contentEstimate | The stage where content is being estimated for the subject rights request.<br/><br/>Applies to: **stage** property of [subjectRightsRequestHistory](../resources/subjectrightsrequesthistory.md) and [subjectRightsRequestStageDetail](../resources/subjectrightsrequeststagedetail.md) |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.<br/><br/>Applies to: **stage** property of [subjectRightsRequestHistory](../resources/subjectrightsrequesthistory.md) and [subjectRightsRequestStageDetail](../resources/subjectrightsrequeststagedetail.md) |
| approval | The stage where the subject rights request is awaiting approval.<br/><br/>Applies to: **stage** property of [subjectRightsRequestHistory](../resources/subjectrightsrequesthistory.md) and [subjectRightsRequestStageDetail](../resources/subjectrightsrequeststagedetail.md) |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.subjectRightsRequestStage"
}-->

```json
{
  "@odata.type": "#microsoft.graph.subjectRightsRequestStage"
}
```
