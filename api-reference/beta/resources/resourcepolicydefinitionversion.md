---
title: "resourcePolicyDefinitionVersion resource type"
description: "Represents a previous version of the Rego policy and parameter schema of a resource policy definition."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# resourcePolicyDefinitionVersion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a previous version of the Rego policy and parameter schema available through the **previousVersions** relationship of [resourcePolicyDefinition](../resources/resourcepolicydefinition.md#relationships).

Updating a definition creates a new current version and moves its previous current version into **previousVersions**. For example, updating version `1.0.0` to `1.1.0` makes version `1.0.0` available through this collection. Callers can read and delete previous versions of customer-authored definitions. The service manages version creation. Previous versions of built-in definitions are read-only.

The **version** is extracted from this version's Rego package name. For example, `package graph.require_application_name["1.0.0"]` identifies version `1.0.0`. [Get a previous version](../api/resourcepolicydefinitionversion-get.md) with `Accept: text/plain` to retrieve its unescaped Rego policy.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/resourcepolicydefinition-list-previousversions.md)|[resourcePolicyDefinitionVersion](../resources/resourcepolicydefinitionversion.md) collection|List previous versions.|
|[Get](../api/resourcepolicydefinitionversion-get.md)|[resourcePolicyDefinitionVersion](../resources/resourcepolicydefinitionversion.md)|Read a previous version.|
|[Delete](../api/resourcepolicydefinitionversion-delete.md)|None|Delete a previous version of a customer-authored definition.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|lastModifiedDateTime|DateTimeOffset|The date and time the object was last modified, in ISO 8601 format and UTC. Read-only.|
|paramsSchema|[Json](../resources/json.md)|The JSON parameter schema extracted from this version's Rego `__metadata__`, or null if none was declared. Supports `$select`. Read-only.|
|policy|String|The Rego policy for this version, represented as a JSON-escaped string in JSON responses. Read-only.|
|version|String|The three-part semantic version extracted from this version's Rego package name and its primary key. Read-only.|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "version",
  "@odata.type": "microsoft.graph.resourcePolicyDefinitionVersion",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.resourcePolicyDefinitionVersion",
  "version": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "policy": "String",
  "paramsSchema": {
    "@odata.type": "microsoft.graph.Json"
  }
}
```
