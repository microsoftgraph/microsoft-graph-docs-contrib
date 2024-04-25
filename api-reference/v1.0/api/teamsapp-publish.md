---
title: "Publish teamsApp"
description: "Publish an app to the Microsoft Teams app catalog."
author: "nkramer"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Publish teamsApp

Namespace: microsoft.graph

Publish an [app](../resources/teamsapp.md) to the Microsoft Teams app catalog.
Specifically, this API publishes the app to your organization's catalog (the tenant app catalog);
the created resource has a **distributionMethod** property value of `organization`.

The **requiresReview** property allows any user to submit an app for review by an administrator. Admins can approve or reject these apps via this API or the Microsoft Teams admin center.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "teamsapp_publish" } -->
[!INCLUDE [permissions-table](../includes/permissions/teamsapp-publish-permissions.md)]

> [!NOTE]
> The Directory.ReadWrite.All permission is supported only for backward compatibility. We recommend that you update your solutions to use an alternative permission listed in the previous table and avoid using these permissions going forward.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /appCatalogs/teamsApps
```

To publish an app that requires a review:

```http
POST /appCatalogs/teamsApps?requiresReview={Boolean}
```

## Query parameters

|Property|Type|Description|
|----|----|----|
|requiresReview| Boolean | This optional query parameter triggers the app review process. Users with admin privileges can submit apps without triggering a review. If users want to request a review before publishing, they must set **requiresReview** to `true`. A user who has admin privileges can opt not to set **requiresReview** or set the value to `false`  and the app is approved and immediately published.|

## Request headers

| Header        | Value           |
|:--------------|:--------------  |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/zip. Required. |

## Request body

In the request body, include a Teams zip manifest payload. For details, see [Create an app package](/microsoftteams/platform/concepts/apps/apps-package).

Each app in the app catalog must have a unique manifest ID.

## Response

If successful, this method returns a `200 OK` response code and a [teamsApp](../resources/teamsapp.md) object. If the app manifest has any validation errors, the request returns an error response with details about the schema errors.

## Examples

### Example 1: Publish an app to the app catalog

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_teamsapp_1"
}-->

```http
POST https://graph.microsoft.com/v1.0/appCatalogs/teamsApps
Content-type: application/zip

[Zip file containing a Teams app package]
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-teamsapp-1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-teamsapp-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-teamsapp-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

For information about how to create a Microsoft Teams application zip file, see [Create an app package](/microsoftteams/platform/concepts/apps/apps-package).

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.teamsApp",
  "truncated": true
} -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "e3e29acb-8c79-412b-b746-e6c39ff4cd22",
  "externalId": "b5561ec9-8cab-4aa3-8aa2-d8d7172e4311",
  "displayName": "Test App",
  "distributionMethod": "organization"
}
```

### Example 2: Upload a new application for review to an organization's app catalog

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_teamsapp_2"
}-->

```http
POST https://graph.microsoft.com/v1.0/appCatalogs/teamsApps?requiresReview=true
Content-type: application/zip
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-teamsapp-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-teamsapp-2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-teamsapp-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-teamsapp-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-teamsapp-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-teamsapp-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-teamsapp-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-teamsapp-2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.teamsApp",
  "truncated": true
} -->

```http
HTTP/1.1 201 Created
Location: https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/e3e29acb-8c79-412b-b746-e6c39ff4cd22

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#appCatalogs/teamsApps/$entity",
  "id": "e3e29acb-8c79-412b-b746-e6c39ff4cd22",
  "externalId": "b5561ec9-8cab-4aa3-8aa2-d8d7172e4311",
  "displayName": "Test App",
  "distributionMethod": "organization"
}
```

### Example 3: Approve or reject an app pending review

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_teamsapp_3",
  "sampleKeys": ["a761ad07-22ef-4a53-9feb-2837c8ad4a84", "YTc2MWFkMDctMjJlZi00YTUzLTlmZWItMjgzN2M4YWQ0YTg0IyMxLjEuOCMjU3VibWl0dGVk"]
}-->

```http
PATCH https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/a761ad07-22ef-4a53-9feb-2837c8ad4a84/appDefinitions/YTc2MWFkMDctMjJlZi00YTUzLTlmZWItMjgzN2M4YWQ0YTg0IyMxLjEuOCMjU3VibWl0dGVk
Content-type: application/json
If-Match: InFtSStsNVJHVWdzWUJRU2ZVWGp4RWc9PSI=

{
  "publishingState":"published"
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.teamsApp",
  "truncated": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#appCatalogs/teamsApps('a761ad07-22ef-4a53-9feb-2837c8ad4a84')/appDefinitions/$entity",
    "id": "YTc2MWFkMDctMjJlZi00YTUzLTlmZWItMjgzN2M4YWQ0YTg0IyMxLjEuOCMjUHVibGlzaGVk",
    "teamsAppId": "a761ad07-22ef-4a53-9feb-2837c8ad4a84",
    "azureADAppId": null,
    "displayName": "Ducks",
    "version": "1.1.8",
    "requiredResourceSpecificApplicationPermissions": [],
    "publishingState": "published",
    "shortDescription": "quaerat quasi magnam. slight change. 5",
    "description": "Aliquid placeat animi debitis accusamus. Non perferendis ullam. Quis est consequuntur vitae provident. Sunt laudantium id aut. slight change 5",
    "lastModifiedDateTime": null,
    "createdBy": null
}
```

### Example 4: Publish an app to the app catalog with an error in the app manifest

#### Request

The following example shows a request.

<!-- { "blockType": "ignored" } -->
```http
POST https://graph.microsoft.com/v1.0/appCatalogs/teamsApps
Content-type: application/zip

[Zip file containing a Teams app package]
```

#### Response

The following example shows the response.

<!-- { "blockType": "ignored" } -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "error": {
        "code": "BadRequest",
        "message": "name | Required properties are missing from object: [].; developer.websiteUrl | String \"hs://www.yo.com\" does not match regex pattern \"^[Hh][Tt][Tt][Pp][Ss]?://\".",
        "innerError": {
            "code": "UnableToParseTeamsAppManifest",
            "message": "name | Required properties are missing from object: [].; developer.websiteUrl | String \"hs://www.yo.com\" does not match regex pattern \"^[Hh][Tt][Tt][Pp][Ss]?://\".",
            "details": [
                {
                    "code": "SchemaError_Required",
                    "message": "Required properties are missing from object: [].",
                    "target": "name"
                },
                {
                    "code": "SchemaError_Pattern",
                    "message": "String \"hs://www.yo.com\" does not match regex pattern \"^[Hh][Tt][Tt][Pp][Ss]?://\".",
                    "target": "developer.websiteUrl"
                }
            ],
            "date": "2024-01-18T21:47:58",
            "request-id": "d1878136-bc88-421a-b342-c3d883db31a1",
            "client-request-id": "d1878136-bc88-421a-b342-c3d883db31a1"
        }
    }
}
```

<br>

<details>
<summary>Inner error codes</summary>

| Error code | Error message | Description |
| :---- | ---- | ---- |
|`Serialization_FileNotValidJson`	| The file could not be parsed as a JSON object.| The file that you provided didn't comply with a valid JSON format.|
|`Serialization_ManifestVersionPropertyMissing`	| The file does not contain the "{0}" property.	| The manifest file is missing the `manifestVersion` property. In this context, {0} is the string for `manifestVersion` property.|
|`Serialization_FileMissing`	| The file {0} could not be found in the app package.	| You didn't provide an expected file in the app package.|
|`Serialization_TrailingCommaInManifestJsonFile`	| Manifest json file contains trailing comma.	| The manifest JSON file contains trailing comma.|
|`SchemaError_MultipleOf`	| Integer {0} is not a multiple of {1}.	| A JSON file failed the `multipleOf` check of the schema. In this context, {0} represents the integer value and {1} signifies the required multiple. |
|`SchemaError_Maximum`	| Integer {0} exceeds maximum value of {1}.	| A JSON file failed the `maximum` check of the schema. {0} is the value that exceeded the maximum and {1} is the maximum. |
|`SchemaError_Minimum`	| Integer {0} is less than minimum value of {1}.	| A JSON file failed the `minimum` check of the schema. {0} is the value that exceeded the minimum and {1} is the minimum.|
|`SchemaError_MaximumLength`	| String {0} exceeds maximum length of {1}.	| A JSON file failed the `maximumLength` check of the schema. {0} is the string that exceeds maximum length and {1} is the maximum.|
|`SchemaError_MinimumLength`	| String {0} is less than minimum length of {1}. | A JSON file failed the `minimumLength` check of the schema. {0} is the string that is less than the minimum length and {1} is the minimum.|
|`SchemaError_Pattern`	| String {0} does not match regex pattern "{1}". | A JSON file failed the `pattern` check of the schema. {0} is the value that doesn't match the pattern and {1} is the expected pattern.|
|`SchemaError_ContentEncoding`| String {0} does not validate against content encoding {1}.	| A JSON file failed the `contentEncoding` check of the schema. {0} is a string content encoding and {1} is the expected content encoding.|
|`SchemaError_Format`	| String {0} does not validate against format {1}.	| A JSON file failed the `format` check of the schema. {0} is the string that isn't in the expected format and {1} is the expected format.|
|`SchemaError_Type`	| Value {0} is not of the expected type {1}.|	 A JSON file failed the `type` check of the schema. {0} is the string that isn't in the expected type and {1} is the expected type.|
|`SchemaError_AdditionalItems`	| The schema does not allow additional items.	| A JSON file failed the `additionalItems` check of the schema.|
|`SchemaError_MaximumItems`	| Array item count {0} exceeds maximum count of {1}.	| A JSON file failed the `maximumItems` check of the schema. {0} is the number of elements in the array and {1} is the maximum allowed.|
|`SchemaError_MinimumItems`	| Array item count {0} is less than minimum count of {1}.	| A JSON file failed the `minimumItems` check of the schema. {0} is the number of elements in the array and {1} is the minimum allowed.|
|`SchemaError_UniqueItems`	| Array contains items that are not unique.	| A JSON file failed the `uniqueItems` check of the schema.|
|`SchemaError_MaximumProperties`	| Object property count {0} exceeds maximum count of {1}.	| A JSON file failed the `maximumProperties` check of the schema. {0} is the number of properties provided and {1} is the maximum allowed.|
|`SchemaError_MinimumProperties`|	 Object property count {0} is less than minimum count of {1}.	 |A JSON file failed the `minimumProperties` check of the schema. {0} is the number of properties provided and {1} is the minimum allowed.|
|`SchemaError_Required`	| Required properties are missing from object: {0}.| A JSON file failed the `required` check of the schema. {0} is the required properties but it isn't provided.|
|`SchemaError_AdditionalProperties`	| Property {0} has not been defined and the schema does not allow additional properties.	| A JSON file failed the `additionalProperties` check of the schema. {0} is the additional property.|
|`SchemaError_Dependencies`	 |Dependencies for property {0} failed. Missing required keys.	| A JSON file failed the `dependencies` check of the schema. {0} is the property that failed.|
|`SchemaError_Enum`	| Value {0} is not defined in the enum.| A JSON file failed the `enum` check of the schema. {0} is the value that isn't in the enum.|
|`SchemaError_AllOf`	| JSON does not match all schemas from "allOf".	| A JSON file failed the `allOf` check of the schema. The `allOf` isn't localizable.|
|`SchemaError_AnyOf`	| JSON does not match any schemas from "anyOf".	| A JSON file failed the `anyOf` check of the schema. The `anyOf` isn't localizable.|
|`SchemaError_OneOf`	| JSON is valid against more than one schema from "oneOf".|	 A JSON file failed the `oneOf` check of the schema. The `oneOf` isn't localizable.|
|`SchemaError_Not`	| JSON is valid against schema from "not".|	 A JSON file failed the `not` check of the schema. The `not` isn't localizable.|
|`SchemaError_Id`	| Duplicate schema id {0} encountered.	| A JSON file failed the `id` check of the schema. {0} is the id of the schema.|
|`SchemaError_PatternProperties`	| Could not test property names with regex pattern "{0}".|	 A JSON file failed the `patternProperties` check of the schema. {0} is the pattern for the properties.|
|`SchemaError_Valid`	| Schema always fails validation.	| A JSON file failed the `valid` check of the schema.|
|`SchemaError_Const`	| Value {0} does not match constant {1}.|	 A JSON file failed the `const` check of the schema. {0} is the value that failed and {1} is correct value.|
|`SchemaError_Contains`	| Array does not contain a required item.	| A JSON file failed the `contains` check of the schema.|
|`SchemaError_Then`	 |JSON does not match schema from "then".	| A JSON file failed the `then` check of the schema. The `then` isn't localizable.|
|`SchemaError_Else`	| JSON does not match schema from "else".|	 A JSON file failed the `else` check of the schema. The `else` isn't localizable.|
| `SchemaError_Other`	| The value does not conform to the schema for this property.	| A JSON file failed other unhandled check of the schema.|
|`ActivityGroupIdFromActivitiesTypeValidation` 	| ActivityGroupId field in ActivityType must be a subset of Id field in ActivityGroup.	| The error occurs when `ActivityGroupId` field in `ActivityType` isn't a subset of `Id` field in `ActivityGroup` property in the app manifest.|
|`ActivityTypesMustExistWithActivitiesGroupValidation` |	Manifest should not contain Activity Group when Activity Types is missing.	| The error occurs when `ActivityGroup` property is present, but `ActivityType` property is missing in the app manifest.|
|`ApiSecretServiceAuthTypeComposeExtensionContainsMsftEntraConfiguration `|Api based compose extension with apiSecretServiceAuth authType have microsoftEntraConfiguration defined.| The message appears when an API-based compose extension has `microsoftEntraConfiguration` defined in the app manifest.|
|`ApiSecretServiceAuthTypeComposeExtensionContainsNoApiSecretRegistrationId `	| Api based compose extension with apiSecretServiceAuth authType have no apiSecretRegistrationId defined.| The message appears when an API-based compose extension with `apiSecretServiceAuth` authType without `apiSecretRegistrationId` defined in the app manifest.|
|`ApiSecretServiceAuthTypeComposeExtensionContainsNoApiSecretServiceAuthConfiguration` |	 Api based compose extension with apiSecretServiceAuth authType have no apiSecretServiceConfiguration.	| The message appears when an API-based compose extension doesn't set `supportsSingleSignOn` to true in the app manifest.|
|`ApiBasedComposeExtensionManifestCommandIdsNotIncludedInOperationIdsOnApiSpecficationFile`	| Command Ids on manifest are not included in Operation Ids on API specification file.	| The error that occurs when the `Command Ids` in the app manifest aren't included in `Operation Ids` on API specification file.|
|`ApiBasedComposeExtensionWithBotId`	| Api based compose extension cannot have botId defined.	| The error that occurs when an API-based compose extension have `botId` defined in the app manifest.|
|`ApiBasedComposeExtensionWithCanUpdateConfiguration`	 |Api based compose extension cannot have canUpdateConfiguration defined on manifest.	| The error that occurs when an API-based compose extension have `canUpdateConfiguration` defined in the app manifest.|
|`ApiBasedComposeExtensionWithNoParameter`|	 Api based compose extension must have command parameters defined on manifest.	| The error that occurs when an API-based compose extension doesn't have any command parameters defined in the app manifest.|
|`ApiBasedComposeExtensionApiResponseRenderingTemplateFileNullOrEmpty` |	 Api based compose extension must have apiResponseRenderingTemplateFile defined on manifest.	| The error that occurs when an API-based compose extension doesn't have the `apiResponseRenderingTemplateFile` defined in the app manifest.|
|`ApiBasedComposeExtensionApiSpecificationFileNullOrEmpty` 	| Api based compose extension must have apiSpecificationFile defined on manifest. | The error that occurs when an API-based compose extension doesn't have the `apiSpecificationFile` defined in the app manifest.|
|`MsftEntraAuthTypeComposeExtensionContainsApiSecretServiceConfiguration `	 |Api based compose extension with microsoftEntra authType have apiSecretServiceConfiguration defined.	 |The message appears when an API-based compose extension have `apiSecretServiceConfiguration` defined in the manifest.|
|`MsftEntraAuthTypeComposeExtensionContainsNoMsftEntraConfiguration `|	 Api based compose extension with microsoftEntra authType have no microsoftEntraConfiguration defined.	| The message appears when an API-based compose extension doesn't have the `microsoftEntraConfiguration` defined in the app manifest.|
|`MsftEntraAuthTypeComposeExtensionWebApplicationInfoOrResourceNotDefined` 	 |Api based compose extension with microsoftEntra authType have no webApplicationInfo or resource defined on manifest.	| The message appears when an API-based compose extension with `microsoftEntra` authType doesn't have `webApplicationInfo` or `resource` defined in the app manifest.|
|`MsftEntraAuthTypeComposeExtensionSupportsSingleSignOnFalse` | Api based compose extension with microsoftEntra authType does not set supportsSingleSignOn to true.	| The message appears when an API-based compose extension doesn't set `supportsSingleSignOn` to `true` in the app manifest.|
|`MsftEntraAuthTypeComposeExtensionResourceURLNotMatchServerURLOnApiSpec` |	 Api based compose extension with microsoftEntra authType resource url on manifest doesn't match server url on api specification file.	| The message appears when an API-based compose extension with `microsoftEntra` authType resource url in the app manifest doesn't match server url on api specification file.|
|`NoAuthTypeComposeExtensionContainsAuthConfiguration` |	 Api based compose extension with none authType have auth-related configuration defined.	| The message appears when an API-based compose extension with authType `microsoftEntraConfiguration` or `apiSecretServiceConfiguration` not defined in the app manifest.|
|`ApiSpecificationFileContainUnsupportedHttpMethod` |	 Api based compose extension have server url(s) that have unsupported http method defined on apiSpecificationFile. Currently only GET and POST are supported.	| The message appears when an API-based compose extension have unsupported `http` method defined on `apiSpecificationFile`.|
|`ApiSpecificationFileRequiredParameterContainUnsupportedLocation` 	| Api based compose extension have unsupported parameter location defined on apiSpecificationFile for {0}. Currently only path and query supported.|	 The message appears when an API-based compose extension have unsupported parameter location defined on `apiSpecificationFile`.|
|`ApiSpecificationFileRequestBodyContainUnsupportedMediaType`	 |Api based compose extension have unsupported media type defined in request body on apiSpecificationFile. Currently only application/json is supported.	| The message appears when an API-based compose extension have unsupported `media` type defined in request body on `apiSpecificationFile`.|
|`ApiSpecificationFileRequestBodyContainUnsupportedSchemaType`	| Api based compose extension have unsupported schema type defined in request body on apiSpecificationFile. Currently arrays are not supported.	| The message appears when an API-based compose extension have unsupported schema type defined in request body on `apiSpecificationFile`.|
|`ApiSpecificationFileRequestBodySchemaContainKeywords` |	 Api based compose extension have keywords |The message appears when an API-based compose extension have keywords defined in request body on `apiSpecificationFile`.|
|`ApiSpecificationFileRequiredParameterOrPropertyNotDefinedOnManifest`	| Api based compose extension have required parameters or properties {0} not defined on manifest.	| The message appears when an API-based compose extension have `required` parameters not defined in the app manifest.|
|`ApiSpecificationFileResponseContainUnsupportedMediaType`	| Api based compose extension have unsupported media type defined in response on apiSpecificationFile. Currently only application/json supported.	| The message appears when an API-based compose extension have unsupported `media` type defined in response on `apiSpecificationFile`.|
|`ApiSpecificationFileServerUrlsContainHttp`|	 Api based compose extension have server urls that have http protocal defined on apiSpecificationFile.	| The message appears when an API-based compose extension have server urls that contain `http` protocal on `apiSpecificationFile`.|
|`ApiSpecificationFileServerUrlsContainInvalidUrl`	| Api based compose extension have server urls that are invalid url defined on apiSpecificationFile.	| The message appears when an API-based compose extension have `invalid` url defined on `apiSpecificationFile`.|
|`ServerUrlsMissingOnApiSpecificationFile` 	| Api based compose extension have no server urls defined on apiSpecificationFile.	| The error that occurs when an API-based compose extension have no server urls defined on `apiSpecificationFile`.|
|`BotBasedComposeExtensionApiResponseRenderingTemplateFileExists` |	 Bot based compose extension cannot have apiResponseRenderingTemplateFile defined.	 |The error that occurs when the bot-based compose extension have `apiResponseRenderingTemplateFile` property defined in the app manifest.|
|`BotBasedComposeExtensionApiSpecificationFileExists` |	 Bot based compose extension cannot have apiSpecificationFile defined.|	 The error that occurs when the bot-based compose extension have API specification file defined in the app manifest.|
|`BotBasedComposeExtensionBotIdNotGuid` |	 Bot based compose extension must have GUID botId.	| The error that occurs when the bot-based compose extension have no GUID botId.|
|`CommonAppIdIsNotGuid`	| Field 'id' is not a Guid in the manifest.	| The error occurs when the `appId` is not GUID.|
|`CommonAppIdIsRequiredField`	| Required field 'id' is missing in the manifest.	| The error occurs when the `appId` isn't provided.|
|`CommonManifestVersionIsRequiredField`	|The required field in manifest 'manifest Version' is missing.	| The error occurs when manifest version isn't provided.|
|`CommonSchemaUrlIsRequiredField`	| Schema URL must be present.	| The error occurs when schema isn't provided.|
|`DashboardCardBothIconNameAndUrlPresent`	| Dashboard cards icon should not contain both icon name and url.	| Dashboard cards icon mustn't contain both icon name and url.|
|`DashboardCardEntityIdsAreNotUnique`	| Dashboard card entity ids should be unique.	| Entity Ids for dashboards card aren't unique.|
|`DeveloperNameIsRequiredField`	| Required field 'developer name' is missing in the manifest.	| Developer name isn't provided.|
|`DeveloperNameLengthCheck`	| Maximum character length must not exceed 32 chars.	| Developer name length is more than 32 characters.|
|`DeveloperPrivacyUrlIsRequiredField`	| Required field 'privacyUrl' is missing in the manifest.	| The error occurs when the `privacyUrl` is missing in the app manifest. |
|`DeveloperPrivacyUrlMustBeHttps`	| Privacy URL must be secured Support URL (HTTPS).	| The error occurs when the developer privacy url isn't `https`.|
|`DeveloperTermsOfUseUrlIsRequiredField`	| Required field 'termsOfUseUrl' is missing in the manifest.	| The error occurs when the `termsOfUseUrl` is missing.|
|`DeveloperTermsOfUseUrlMustBeHttps`|	 Terms Of Use URL must be secured Support URL (HTTPS).|	 The error occurs when the developer terms of use url isn't `https`.|
|`DeveloperWebsiteUrlIsRequiredField`	| Required field 'websiteUrl' is missing in the manifest.	| The error occurs when the developer website url isn't provided.|
|`DeveloperWebsiteUrlMustBeHttps`	| Website URL must be secured Support URL (HTTPS)	| The error occurs when the developer website url isn't `https`.|
|`UniqueActivityTypeInActivitiesValidation` |	 Manifest should not contain duplicate Activity Type.	| The error occurs when the activity type isn't unique in the app manifest.|
|`UniqueIdInActivitiesGroupValidation` |	 Manifest should not contain duplicate id in Activity Groups.	| The error occurs when the activity group id isn't unique in the app manifest.|
|`FullDescriptionCannotBeEmpty`	 |Full Description cannot be empty.	| The full description can't be empty.|
|`FullDescriptionLengthCheck`	| Maximum character length for long description must not exceed 4000 chars.	| The full description length exceeds more than 4000 characters.|
|`GroupChatForBotsLessThanV13`	| Please upgrade the version of manifest to V1.3 as group chat bot is supported in manifest v1.3 onwards.	| The error that occurs when the group chat exists in bots for app manifest version less than 1.3.|
|`GroupChatForConfigurableTabsLessThanV13`	| Please upgrade the version of manifest to V1.3 as group chat configurable tabs is supported in manifest v1.3 onwards.|The error which occurs when the group chat exists in configurable tabs for the app manifest version less than 1.3.|
|`InvalidColor32x32IconHeightAndWidth`|	 Color 32x32 icon should be 32x32 with only white and transparent	| The color 32x32 icon doesn't have the correct dimensions.|
|`InvalidColorIconHeightAndWidth`	| Color Icon is not as per the required dimension.	| The color icon doesn't have the correct dimensions.|
|`InvalidOutlineIconHeightAndWidth` |	 Small icon should be 32x32 with only white and transparent	| The outline icon doesn't have the correct dimensions.|
|`InvalidOutlineIconTransparency`	| Outline icon is not transparent. It's Alpha| The outline icon isn't transparent. It contains pixels that are neither transparent nor white, with an Alpha, R, G, B value of {0},{1},{2},{3}.	|
|`ParameterOnManifestNotDefinedOnApiSpecFile` |	 Api based compose extension have parameters {0} on manifest not defined on api specification file.	| The message appears when an API-based compose extension parameters in the app manifest isn't defined on api specification file. |
|`ReservedActivitiesValidation` 	| Manifest should not contain reserved Activity Type 'systemDefault'.	| The error occurs when the `systemDefault` activity type is defined in the app manifest.|
|`ReservedStaticTabNameShouldBeNull` 	| Reserved tab "Name" property should not be specified	| This message appears when the reserved `staticTabs` name property is specified.|
|`ShortDescriptionCannotBeEmpty`	| Short Description can not be empty	| The short description can't be empty.|
|`ShortDescriptionLengthCheck`	 |Maximum character length for short description must not exceed 80 chars.	| The short description length exceeds 80 characters.|
|`ShortNameEqualsReservedName`	 |Short name of the app cannot be reserved name.	| The error occurs when the short name is reserved name.|
|`ShortNameIsRequiredField`	| Short name of the app cannot be empty.	| The error occurs when the short name is empty.|
|`StaticTabNameCouldNotBeEmpty`|	 Non-reserved staticTabs "Name" property cannot be empty.	| This message appears when the `staticTabs` name property is empty.|
|`BotIdIsNotGuid`	| BotId is not a Guid value.	| This message appears when the `BotId` isn't GUID in `manifest.json`.|
|`VersionCannotBeEmpty`	| Required field "version" is missing in the manifest.	| The version in the app package is null.|
|`VersionContainsOnlyNumbersDotSeparated`|	 App version supports only numbers in the '#.#.#' format.	| The version in the app package doesn't match pattern '#.#.#'.|
|`VersionHasMajorLessThan1`	 |App version should not start with '0'. Ex: 0.0.1 or 0.1 are not valid app versions and 1.0 / 1.5.1 / 1.0.0 / 2.5.0 are valid app versions. In case of new update in manifest to an existing app in store | You need to increase your app version. For example, if the current version of your app in the store is 1.0 and you’re submitting an update for validation, the version number of the update must be higher than 1.0.|
|`ShortNameLengthCheck` |	Maximum character length for Short Name must not exceed 30 chars	|The error occurs when the short name exceeds 32 characters.|
|`ApiSpecificationFileParameterContainUnsupportedSchemaType` |	Api based compose extension have unsupported parameter schema type defined on apiSpecificationFile.Arrays are not supported.	|The message appears when an API-based compose extension have unsupported parameter schema type defined in the `apiSpecificationFile`.|

</details>

## Related content

- [App catalog C# sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/tree/main/samples/graph-appcatalog-lifecycle/csharp)
- [Microsoft Graph service-specific throttling limits](/graph/throttling-limits#microsoft-teams-service-limits)
