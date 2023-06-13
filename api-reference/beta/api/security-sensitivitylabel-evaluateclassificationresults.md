---
title: "sensitivityLabel: evaluateClassificationResults"
description: "Evaluate which label to apply based on an existing content information and a classification result."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# sensitivityLabel: evaluateClassificationResults
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use the [classification results](../resources/security-classificationresult.md) to compute the [sensitivity label](../resources/security-sensitivitylabel.md) that should be applied and return the set of actions that must be taken to correctly label the information. This API is useful when a label should be set automatically based on classification of the file contents, rather than labeled directly by a user or service. 

To evaluate based on classification results, provide the [contentInfo](../resources/security-contentinfo.md), which includes existing content metadata [key-value pairs](../resources/security-keyvaluepair.md), and [classification results](../resources/security-classificationresult.md). The API returns an [informationProtectionAction](../resources/security-informationprotectionaction.md) that contains one of more of the following:

* [addContentFooterAction](../resources/security-addcontentfooteraction.md)
* [addContentHeaderAction](../resources/security-addcontentheaderaction.md)
* [addWatermarkAction](../resources/security-addwatermarkaction.md)
* [applyLabelAction](../resources/security-applylabelaction.md)
* [customAction](../resources/security-customaction.md)
* [justifyAction](../resources/security-justifyaction.md)
* [metadataAction](../resources/security-metadataaction.md)
* [protectAdhocAction](../resources/security-protectadhocaction.md)
* [protectByTemplateAction](../resources/security-protectbytemplateaction.md)
* [protectionDoNotForwardAction](../resources/security-protectdonotforwardaction.md)
* [recommendLabelAction](../resources/security-recommendlabelaction.md)
* [removeContentFooterAction](../resources/security-removecontentfooteraction.md)
* [removeContentHeaderAction](../resources/security-removecontentheaderaction.md)
* [removeProtectionAction](../resources/security-removeprotectionaction.md)
* [removeWatermarkAction](../resources/security-removewatermarkaction.md)

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | InformationProtectionPolicy.Read            |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | InformationProtectionPolicy.Read.All        |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

To evaluate as the signed-in user (delegated permission) or a specified user (application permission):

``` http
POST /users/{usersId}/security/informationProtection/sensitivityLabels/evaluateClassificationResults
POST /users/me/security/informationProtection/sensitivityLabels/evaluateClassificationResults
```

To evaluate as a service principal (application permission):

``` http
POST /users/security/informationProtection/sensitivityLabels/evaluateClassificationResults
```

## Request headers

| Name          | Description                                                                                                                                                                       |
| :------------ | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {token}. Required.                                                                                                                                                         |
| Content-type  | application/json. Required.                                                                                                                                                       |
| User-Agent    | Describes the name and version of the calling application. Details will surface in Azure Information Protection Analytics. Suggested format is `ApplicationName/Version`. Optional. |

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

| Parameter             | Type                                                                    | Description                                                                                                                                                                                                                                                                           |
| :-------------------- | :---------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| contentInfo           | [contentInfo](../resources/security-contentInfo.md)                              | Provides details about the content format, content state, and existing [metadata](../resources/security-keyvaluepair.md) as key-value pairs.                                                                                                                                                   |
| classificationResults | [classificationResult](../resources/security-classificationresult.md) collection | Contains the set of classification results returned by the data classification endpoint. Classification information is used to determine the appropriate label based on the Microsoft Purview Information Protection policy label configuration in Microsoft 365 Security and Compliance Center. |



## Response

If successful, this action returns a `200 OK` response code and an [informationProtectionAction](../resources/security-informationprotectionaction.md) collection in the response body.

## Examples

### Request

The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "sensitivitylabelthis.evaluateclassificationresults",
  "sampleKeys": ["bob@contoso.com"]
}
-->
```http
POST https://graph.microsoft.com/beta/users/bob@contoso.com/security/informationProtection/sensitivityLabels/evaluateClassificationResults
Content-type: application/json
User-agent: ContosoLOBApp/1.0

{
    "contentInfo": {
        "@odata.type": "#microsoft.graph.security.contentInfo",
        "format@odata.type": "#microsoft.graph.security.contentFormat",
        "format": "default",
        "contentFormat": "File",
        "identifier": "c:\\user\\new.docx",
        "state@odata.type": "#microsoft.graph.security.contentState",
        "state": "rest",
        "metadata": []
    },
    "classificationResults": [
        {
            "sensitiveTypeId": "50842eb7-edc8-4019-85dd-5a5c1f2bb085", //Credit Card 
            "count": 7,
            "confidenceLevel": 99
        }
    ]
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/sensitivitylabelthisevaluateclassificationresults-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "name": "sensitivitylabelthis.evaluateclassificationresults",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.informationProtectionAction",
  "isCollection": true
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.security.informationProtectionAction)",
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.applyLabelAction",
      "responsibleSensitiveTypeIds": [
        "cb353f78-2b72-4c3c-8827-92ebe4f69fdf"
      ],
      "actionSource": "automatic",
      "label": {
        "id": "722a5300-ac39-4c9a-88e3-f54c46676417",
        "name": "Top Secret",
        "description": "",
        "color": "#000000",
        "sensitivity": 13,
        "tooltip": "This information is Top Secret.",
        "isActive": true
      },
      "actions": [
        {
          "@odata.type": "#microsoft.graphsecurity..protectByTemplateAction",
          "templateId": "0e7fea72-7bba-4438-a070-95c292cd6f8c"
        },
        {
          "@odata.type": "#microsoft.graph.security.metadataAction",
          "metadataToRemove": [],
          "metadataToAdd": [
            {
              "name": "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_Enabled",
              "value": "true"
            },
            {
              "name": "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_SetDate",
              "value": "2019-10-03T21:50:20Z"
            },
            {
              "name": "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_Method",
              "value": "Standard"
            },
            {
              "name": "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_Name",
              "value": "Top Secret"
            },
            {
              "name": "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_SiteId",
              "value": "cb46c030-1825-4e81-a295-151c039dbf02"
            },
            {
              "name": "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_ActionId",
              "value": "76dc494e-6c59-43e6-88a1-0000edd58fca"
            },
            {
              "name": "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_ContentBits",
              "value": "8"
            }
          ]
        }
      ]
    }
  ]
}
```
