---
title: "evaluationErrorDetail resource type"
description: "Represents the reason why a policy evaluation couldn't be completed."
author: "zhengnlu"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# evaluationErrorDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the structured reason for the **inspectionIncompleteReason** property of [evaluationIncompleteActivityMetadata](../resources/evaluationincompleteactivitymetadata.md) when a policy evaluation couldn't be completed.

## Properties

| Property | Type | Description |
| :--- | :--- | :--- |
| errorCategory | [evaluationErrorCategory](../resources/enums.md#evaluationerrorcategory-values) | The high-level category of the error. Required. The possible values are: `unknown`, `systemLimit`, `systemError`, `enforcementError`, `unknownFutureValue`. |
| errorMessage | String | A message that describes the error. Required. |
| errorType | [evaluationErrorType](../resources/enums.md#evaluationerrortype-values) | The specific reason the evaluation couldn't be completed. Required. The possible values are: `unsupportedFile`, `passwordProtectedFile`, `fileTooLarge`, `archiveSizeTooLarge`, `textExceedsMceThreshold`, `partiallyScannedArchive`, `partialImageExtraction`, `imageOcrPartialResult`, `ocrProcessingFailure`, `ocrQuotaExhausted`, `classificationServiceError`, `sitExtractionFailure`, `textExtractionFailure`, `archiveTextExtractionError`, `missingOrInvalidConfiguration`, `agentFailure`, `enforcementTimeout`, `osOverride`, `processNonExistent`, `other`, `serviceTimeout`, `serviceError`, `serviceUnavailable`, `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.evaluationErrorDetail",
  "openType": false
}-->
```json
{
  "@odata.type": "#microsoft.graph.evaluationErrorDetail",
  "errorCategory": "String",
  "errorMessage": "String",
  "errorType": "String"
}
```