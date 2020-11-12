---
title: "Create userAttributeAssignments in b2xIdentityUserFlow"
description: "Create a new identityUserFlowAttributeAssignment object in a b2xIdentityUserFlow."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create userAttributeAssignments in b2xIdentityUserFlow

Namespace: microsoft.graph

Create a new identityUserFlowAttributeAssignment object in a [b2xIdentityUserFlow](../resources/b2xidentityuserflow.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|External Identity User Flow Administrator, Global Administrator|
|Delegated (personal Microsoft account)|Not supported|
|Application|External Identity User Flow Administrator, Global Administrator|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /identity/b2xUserFlows/{id}/userAttributeAssignments
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [identityUserFlowAttributeAssignment](../resources/identityuserflowattributeassignment.md) object.

The following table shows the properties that are required when you create the [identityUserFlowAttributeAssignment](../resources/identityuserflowattributeassignment.md).

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the identityUserFlowAttribute within a user flow.|
|isOptional|Boolean|Determines whether the identityUserFlowAttribute is optional. `true` means the user does not have to provide a value. `false` means the user cannot complete sign up without providing a value.|
|requiresVerification|Boolean|Determines whether the identityUserFlowAttribute requires verification. This is only used for verifying the user's phone number or email address.|
|userAttributeValues|[userAttributeValuesItem](../resources/userattributevaluesitem.md) collection|The input options for the user flow attribute. Only applicable when the userInputType is `radioSingleSelect`, `dropdownSingleSelect`, or `checkboxMultiSelect`.|
|userInputType|identityUserFlowAttributeInputType|The input type of the user flow attribute. Possible values are: `textBox`, `dateTimeDropdown`, `radioSingleSelect`, `dropdownSingleSelect`, `emailBox`, `checkboxMultiSelect`.|

## Response

If successful, this method returns a `201 Created` response code and an [identityUserFlowAttributeAssignment](../resources/identityuserflowattributeassignment.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "create_identityuserflowattributeassignment_from_"
}
-->

``` http
POST https://graph.microsoft.com/beta/identity/b2xUserFlows/{id}/userAttributeAssignments
Content-Type: application/json

{
    "optional": false,
    "requiresVerification": false,
    "userInputType": "TextBox",
    "label": "Shoe size",
    "userAttributeValues": [],
    "userAttribute": {
        "@odata.type": "#Microsoft.Graph.CustomUserFlowAttribute",
        "id": "extension_guid_shoeSize",
        "displayName": "Shoe size",
        "description": "Your shoe size",
        "userFlowAttributeType": "custom",
        "dataType": "string"
    }
}
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityUserFlowAttributeAssignment"
}
-->

``` http
HTTP/1.1 201 Created
Content-Type: application/json
Location /identity/b2xUserFlows('B2X_1_Partner')/assignments('extension_guid_shoeSize')

{
    "id": "extension_guid_shoeSize",
    "optional": false,
    "requiresVerification": false,
    "userInputType": "TextBox",
    "label": "Shoe size",
    "userAttributeValues": [],
    "userAttribute": {
        "@odata.type": "#Microsoft.Graph.CustomUserFlowAttribute",
        "id": "extension_guid_shoeSize",
        "displayName": "Shoe size",
        "description": "Your shoe size",
        "userFlowAttributeType": "custom",
        "dataType": "string"
    }
}
```
