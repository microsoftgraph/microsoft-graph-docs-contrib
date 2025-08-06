---
title: "Publish teamsApp"
description: "Publish an app to the Microsoft Teams app catalog."
author: "MSFTRickyCastaneda"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 09/27/2024
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
>
> * The `Directory.ReadWrite.All` permission is supported only for backward compatibility. We recommend that you update your solutions to use an alternative permission listed in the previous table and avoid using these permissions going forward.
> * The `AppCatalog.Submit` permission allows you to submit apps for review only, not to publish them to the catalog.

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

### Error response

If you send a request to upload an app manifest that contains missing information or errors, you receive an error message that includes the inner error code `UnableToParseTeamsAppManifest`. The **details** property of the inner error contains the error code and the error message. The following table describes the error codes that you might encounter.

<br>
<details><summary>Error response</summary>

| Error code | Error message | Description |
| :---- | :--- | :--- |
| `ActivityGroupIdFromActivitiesTypeValidation` | ActivityGroupId field in ActivityType must be a subset of ID field in ActivityGroup. | The `ActivityGroupId` field in `ActivityType` isn't a subset of the `Id` field in `ActivityGroup` in the app manifest. |
| `ActivityTypesMustExistWithActivitiesGroupValidation` | Manifest shouldn't contain Activity Group when Activity Types is missing. | The `ActivityGroup` property is available, but the `ActivityType` property is missing in the app manifest. |
| `ApiBasedComposeExtensionApiResponseRenderingTemplateFileNullOrEmpty` | API-based compose extension must have apiResponseRenderingTemplateFile defined on manifest. | The API-based compose extension doesn't have the `apiResponseRenderingTemplateFile` defined in the app manifest. |
| `ApiBasedComposeExtensionApiSpecificationFileNullOrEmpty` | API-based compose extension must have apiSpecificationFile defined on manifest. | The API-based compose extension doesn't have the `apiSpecificationFile` defined in the app manifest. |
| `ApiBasedComposeExtensionManifestCommandIdsNotIncludedInOperationIdsOnApiSpecficationFile` | Command Ids on manifest aren't included in Operation Ids on API specification file. | The error that occurs when the `Command Ids` in the app manifest aren't included in `Operation Ids` on API specification file. |
| `ApiBasedComposeExtensionWithBotId` | API-based compose extension can't have botId defined. | The API-based compose extension has `botId` defined in the app manifest. |
| `ApiBasedComposeExtensionWithCanUpdateConfiguration` | API-based compose extension can't have canUpdateConfiguration defined on manifest. | The API-based compose extension has `canUpdateConfiguration` defined in the app manifest. |
| `ApiBasedComposeExtensionWithNoParameter` | API-based compose extension must have command parameters defined on manifest. | The API-based compose extension doesn't have any command parameters defined in the app manifest. |
| `ApiSecretServiceAuthTypeComposeExtensionContainsMsftEntraConfiguration` | API-based compose extension with apiSecretServiceAuth authType have microsoftEntraConfiguration defined. | The API-based compose extension has `microsoftEntraConfiguration` defined in the app manifest. |
| `ApiSecretServiceAuthTypeComposeExtensionContainsNoApiSecretRegistrationId` | API-based compose extension with apiSecretServiceAuth authType have no apiSecretRegistrationId defined. | The API-based compose extension with `apiSecretServiceAuth` authType without `apiSecretRegistrationId` defined in the app manifest. |
| `ApiSecretServiceAuthTypeComposeExtensionContainsNoApiSecretServiceAuthConfiguration` | API-based compose extension with apiSecretServiceAuth authType have no apiSecretServiceConfiguration. | The API-based compose extension doesn't set `supportsSingleSignOn` to `true` in the app manifest. |
| `ApiSpecificationFileContainUnsupportedHttpMethod` | API-based compose extension have server urls that have unsupported http method defined on apiSpecificationFile. Currently only GET and POST are supported. | The API-based compose extension has an unsupported `http` method defined in the `apiSpecificationFile`. |
| `ApiSpecificationFileParameterContainUnsupportedSchemaType` | API-based compose extension have unsupported parameter schema type defined on apiSpecificationFile. Arrays aren't supported. | The API-based compose extension has an unsupported parameter schema type defined in the `apiSpecificationFile`. |
| `ApiSpecificationFileRequestBodyContainUnsupportedMediaType` | API-based compose extension have unsupported media type defined in request body on apiSpecificationFile. Currently only application/json is supported. | The API-based compose extension has an unsupported `media` type defined in request body in the `apiSpecificationFile`. |
| `ApiSpecificationFileRequestBodyContainUnsupportedSchemaType` | API-based compose extension have unsupported schema type defined in request body on apiSpecificationFile. Currently arrays aren't supported. | The API-based compose extension has an unsupported schema type defined in request body in the `apiSpecificationFile`. |
| `ApiSpecificationFileRequestBodySchemaContainKeywords` | API-based compose extension have keywords. | The API-based compose extension has keywords defined in request body in the `apiSpecificationFile`. |
| `ApiSpecificationFileRequiredParameterContainUnsupportedLocation` | API-based compose extension have unsupported parameter location defined on apiSpecificationFile for {0}. Currently only path and query supported. | The API-based compose extension has an unsupported parameter location defined in the `apiSpecificationFile`. |
| `ApiSpecificationFileRequiredParameterOrPropertyNotDefinedOnManifest` | API-based compose extension have required parameters or properties {0} not defined on manifest. | The API-based compose extension has a `required` parameter, which isn't defined in the app manifest. |
| `ApiSpecificationFileResponseContainUnsupportedMediaType` | API-based compose extension have unsupported media type defined in response on apiSpecificationFile. Currently only application/json supported. | The API-based compose extension has an unsupported `media` type defined in response in the `apiSpecificationFile`. |
| `ApiSpecificationFileServerUrlsContainHttp` | API-based compose extension have server urls that have http protocol defined on apiSpecificationFile. | The API-based compose extension has server urls that contain `http` protocol in the `apiSpecificationFile`. |
| `ApiSpecificationFileServerUrlsContainInvalidUrl` | API-based compose extension have server urls that are invalid URL defined on apiSpecificationFile. | The API-based compose extension has an `invalid` URL defined in the `apiSpecificationFile`. |
| `BotBasedComposeExtensionApiResponseRenderingTemplateFileExists` | Bot based compose extension can't have apiResponseRenderingTemplateFile defined. | The bot-based compose extension has an `apiResponseRenderingTemplateFile` property defined in the app manifest. |
| `BotBasedComposeExtensionApiSpecificationFileExists` | Bot based compose extension can't have apiSpecificationFile defined. | The bot-based compose extension has an API specification file defined in the app manifest. |
| `BotBasedComposeExtensionBotIdNotGuid` | Bot based compose extension must have GUID botId. | The bot-based compose extension `botId` isn't GUID. |
| `BotIdIsNotGuid` | BotId isn't a Guid value. | The `BotId` value in the app manifest isn't a GUID. |
| `CommonAppIdIsNotGuid` | Field 'ID' isn't a Guid in the manifest. | The `appId` isn't GUID. |
| `CommonAppIdIsRequiredField` | Required field 'ID' is missing in the manifest. | The `appId` isn't provided. |
| `CommonManifestVersionIsRequiredField` | The required field in manifest 'manifest Version' is missing. | The manifest version isn't provided. |
| `CommonSchemaUrlIsRequiredField` | Schema URL must be present. | The schema isn't provided. |
| `DashboardCardBothIconNameAndUrlPresent` | Dashboard cards icon shouldn't contain both icon name and URL. | Dashboard cards icon mustn't contain both icon name and URL. |
| `DashboardCardEntityIdsAreNotUnique` | Dashboard card entity IDs should be unique. | The returned entity Id for a dashboard card isn't unique within the manifest. |
| `DeveloperNameIsRequiredField` | Required field 'developer name' is missing in the manifest. | The developer name isn't provided. |
| `DeveloperNameLengthCheck` | Maximum character length must not exceed 32 chars. | The developer name is more than 32 characters long. |
| `DeveloperPrivacyUrlIsRequiredField` | Required field 'privacyUrl' is missing in the manifest. | The `privacyUrl` is missing in the app manifest. |
| `DeveloperPrivacyUrlMustBeHttps` | Privacy URL must be secured Support URL (HTTPS). | The developer privacy URL didn't use HTTPS. |
| `DeveloperTermsOfUseUrlIsRequiredField` | Required field 'termsOfUseUrl' is missing in the manifest. | The **termsOfUseUrl** is missing from the manifest. |
| `DeveloperTermsOfUseUrlMustBeHttps` | Terms Of Use URL must be secured Support URL (HTTPS). | The developer terms of use URL didn't use HTTPS. |
| `DeveloperWebsiteUrlIsRequiredField` | Required field 'websiteUrl' is missing in the manifest. | The developer website URL is missing. |
| `DeveloperWebsiteUrlMustBeHttps` | Website URL must be secured Support URL (HTTPS). | The developer website URL didn't use HTTPS. |
| `FullDescriptionCannotBeEmpty` | Full Description can't be empty. | The full description is empty. |
| `FullDescriptionLengthCheck` | Maximum character length for long description must not exceed 4,000 chars. | The full description length is more than 4,000 characters. |
| `GroupChatForBotsLessThanV13` | Please upgrade the version of manifest to V1.3 as group chat bot is supported in manifest v1.3 onwards. | The `groupChat` scope for bots isn't supported in the app manifest version 1.3 and below. |
| `GroupChatForConfigurableTabsLessThanV13` | Please upgrade the version of manifest to V1.3 as group chat configurable tabs is supported in manifest v1.3 onwards. | The `groupChat` scope for configurable tabs isn't supported in the app manifest version 1.3 and below. |
| `InvalidColor32x32IconHeightAndWidth` | Color 32x32 icon should be 32x32 with only white and transparent. | The color 32x32 icon doesn't have the correct dimensions. |
| `InvalidColorIconHeightAndWidth` | Color Icon isn't as per the required dimension. | The dimensions of the color icon are incorrect. |
| `InvalidOutlineIconHeightAndWidth` | Small icon should be 32x32 with only white and transparent. | The dimensions of the outline icon are incorrect. |
| `InvalidOutlineIconTransparency` | Outline icon isn't transparent. It's Alpha. | The outline icon contains pixels that are neither transparent nor white, with Alpha, R, G, B values of {0}, {1}, {2}, and {3}. |
| `LocalizationSchemaIsMissing` |The "schema" property is missing from the localization file.| The localization file is missing the "schema" property.|
| `LocalizationSchemaDoesNotFollowConventionalSchemaRegex` |Localization file does not use the correct schema URL: developer.microsoft.jsonschema URL. | The schema URL in the localization file doesn't match the expected format: developer.microsoft.json.|
| `LocalizationSchemaVersionIsNotTheSameAsTheManifestSchemaVersion` | Localization file schema version is different from app manifest schema version.| The schema version in the localization file doesn't match the version in the app manifest.|
| `MsftEntraAuthTypeComposeExtensionContainsApiSecretServiceConfiguration` | API-based compose extension with microsoftEntra authType have apiSecretServiceConfiguration defined. | The API-based compose extension has `apiSecretServiceConfiguration` defined in the manifest. |
| `MsftEntraAuthTypeComposeExtensionContainsNoMsftEntraConfiguration` | API-based compose extension with microsoftEntra authType have no microsoftEntraConfiguration defined. | The API-based compose extension doesn't have `microsoftEntraConfiguration` defined in the app manifest. |
| `MsftEntraAuthTypeComposeExtensionResourceURLNotMatchServerURLOnApiSpec` | API-based compose extension with microsoftEntra authType resource URL on manifest doesn't match server URL on API specification file. | The API-based compose extension with `microsoftEntra` authType resource URL in the app manifest doesn't match server URL in the API specification file. |
| `MsftEntraAuthTypeComposeExtensionSupportsSingleSignOnFalse` | API-based compose extension with microsoftEntra authType doesn't set supportsSingleSignOn to true. | The API-based compose extension doesn't set **supportsSingleSignOn** to `true` in the app manifest. |
| `NoAuthTypeComposeExtensionContainsAuthConfiguration` | API-based compose extension with none authType have auth-related configuration defined. | The API-based compose extension with authType `microsoftEntraConfiguration` or `apiSecretServiceConfiguration` isn't defined in the app manifest. |
| `ParameterOnManifestNotDefinedOnApiSpecFile` | API-based compose extension have parameters {0} on manifest not defined on API specification file. | The API-based compose extension parameters in the app manifest aren't defined in the API specification file. |
| `ReservedActivitiesValidation` | Manifest shouldn't contain reserved Activity Type 'systemDefault'. | The `systemDefault` activity type is defined in the app manifest. |
| `ReservedStaticTabNameShouldBeNull` | Reserved tab "Name" property shouldn't be specified. | The reserved `staticTabs` name property was specified. |
| `SchemaError_AdditionalItems` | The schema doesn't allow additional items. | The app manifest file failed the `additionalItems` validation of the schema. |
| `SchemaError_AdditionalProperties` | Property {0} hasn't been defined and the schema doesn't allow additional properties. | The app manifest file failed the `additionalProperties` validation of the schema. Here, {0} represents the additional property. |
| `SchemaError_AllOf` | JSON doesn't match all schemas from "allOf". | The app manifest file failed the `allOf` validation of the schema. |
| `SchemaError_AnyOf` | JSON doesn't match any schemas from "anyOf". | The app manifest file failed the `anyOf` validation of the schema. |
| `SchemaError_Const` | Value {0} doesn't match constant {1}. | The app manifest file failed the `const` validation of the schema. Here, {0} represents the value that failed and {1} represents the correct value. |
| `SchemaError_ContentEncoding` | String {0} doesn't validate against content encoding {1}. | The app manifest file failed the `contentEncoding` validation of the schema. Here, {0} represents the string that doesn't match content encoding and {1} represents the expected content encoding. |
| `SchemaError_Dependencies` | Dependencies for property {0} failed. Missing required keys. | The app manifest file failed the `dependencies` validation of the schema. Here, {0} represents the property that failed. |
| `SchemaError_Else` | JSON doesn't match schema from "else". | The app manifest file failed the `else` validation of the schema. |
| `SchemaError_Enum` | Value {0} isn't defined in the enum. | The app manifest file failed the `enum` validation of the schema. Here, {0} represents the value that isn't in the enum. |
| `SchemaError_Format` | String {0} doesn't validate against format {1}. | The app manifest file failed the `format` validation of the schema. Here, {0} represents the string that isn't in the expected format and {1} represents the expected format. |
| `SchemaError_Id` | Duplicate schema ID {0} encountered. | The app manifest file failed the `id` validation of the schema. Here, {0} represents the `id` of the schema. |
| `SchemaError_Maximum` | Integer {0} exceeds maximum value of {1}. | The app manifest file failed the `maximum` validation of the schema. Here, {0} represents the value that exceeds the maximum limit and {1} represents the maximum limit. |
| `SchemaError_MaximumItems` | Array item count {0} exceeds maximum count of {1}. | The app manifest file failed the `maximumItems` validation of the schema. Here, {0} represents the number of elements in the array and {1} represents the maximum allowed. |
| `SchemaError_MaximumLength` | String {0} exceeds maximum length of {1}. | The app manifest file failed the `maximumLength` validation of the schema. Here, {0} represents the string that exceeds the maximum length and {1} represents the maximum length. |
| `SchemaError_MaximumProperties` | Object property count {0} exceeds maximum count of {1}. | The app manifest file failed the `maximumProperties` validation of the schema. Here, {0} represents the number of properties provided and {1} represents the maximum allowed properties. |
| `SchemaError_Minimum` | Integer {0} is less than minimum value of {1}. | The app manifest file failed the `minimum` validation of the schema. Here, {0} represents the value that exceeds the minimum limit and {1} represents the minimum limit. |
| `SchemaError_MinimumItems` | Array item count {0} is less than minimum count of {1}. | The app manifest file failed the `minimumItems` validation of the schema. Here, {0} represents the number of elements in the array and {1} represents the minimum allowed. |
| `SchemaError_MinimumLength` | String {0} is less than minimum length of {1}. | The app manifest file failed the `minimumLength` validation of the schema. Here, {0} represents the string that is less than the minimum length and {1} represents the minimum. |
| `SchemaError_MinimumProperties` | Object property count {0} is less than minimum count of {1}. | The app manifest file failed the `minimumProperties` validation of the schema. Here, {0} represents the number of properties provided and {1} represents the minimum allowed properties. |
| `SchemaError_Not` | JSON is valid against schema from "not". | The app manifest file failed the `not` validation of the schema. |
| `SchemaError_OneOf` | JSON is valid against more than one schema from "oneOf". | The app manifest file failed the `oneOf` validation of the schema. |
| `SchemaError_Pattern` | String {0} doesn't match regex pattern "{1}". | The app manifest file failed the `pattern` validation of the schema. Here, {0} represents the value that doesn't match the pattern and {1} represents the expected pattern. |
| `SchemaError_PatternProperties` | Couldn't test property names with regex pattern "{0}". | The app manifest file failed the `patternProperties` validation of the schema. Here, {0} represents the pattern for the properties. |
| `SchemaError_Required` | Required properties are missing from object: {0}. | The app manifest file failed the `required` validation of the schema. Here, {0} represents the required properties. |
| `SchemaError_Then` | JSON doesn't match schema from "then". | The app manifest file failed the `then` validation of the schema. |
| `SchemaError_Type` | Value {0} isn't of the expected type {1}. | The app manifest file failed the `type` validation of the schema. Here, {0} represents the string that isn't in the expected type and {1} represents the expected type. |
| `SchemaError_UniqueItems` | Array contains items that aren't unique. | The app manifest file failed the `uniqueItems` validation of the schema. |
| `SchemaError_Valid` | Schema always fails validation. | The app manifest file failed the `valid` validation of the schema. |
| `Serialization_FileMissing` | The file {0} couldn't be found in the app package. | The expected file is missing in the app package. |
| `Serialization_FileNotValidJson` | The file couldn't be parsed as a JSON object. | The submitted file didn't comply with a valid JSON format. |
| `Serialization_ManifestVersionPropertyMissing` | The file doesn't contain the "{0}" property. | The **manifestVersion** property is missing in the app manifest file. Here, {0} represents the string for the **manifestVersion** property. |
| `Serialization_TrailingCommaInManifestJsonFile` | Manifest json file contains trailing comma. | The app manifest file contains a trailing comma. |
| `ServerUrlsMissingOnApiSpecificationFile` | API-based compose extension have no server urls defined on apiSpecificationFile. | The error that occurs The API-based compose extension has no server urls defined in the `apiSpecificationFile`. |
| `ShortDescriptionCannotBeEmpty` | Short Description can’t be empty. | The short description was empty. |
| `ShortDescriptionLengthCheck` | Maximum character length for short description must not exceed 80 chars. | The short description is more than 80 characters long. |
| `ShortNameEqualsReservedName` | Short name of the app can't be reserved name. | The short name is a reserved name. |
| `ShortNameIsRequiredField` | Short name of the app can't be empty. | The short name is empty. |
| `ShortNameLengthCheck` | Maximum character length for Short Name must not exceed 30 chars. | The short name exceeds 30 characters. |
| `UniqueActivityTypeInActivitiesValidation` | Manifest shouldn't contain duplicate Activity Type. | The activity type isn't unique in the app manifest. |
| `UniqueIdInActivitiesGroupValidation` | Manifest shouldn't contain duplicate ID in Activity Groups. | The activity group ID isn't unique in the app manifest. |
| `ValidDomainsContainsUrl` |The list of valid domains must include a properly formatted URL.| The domains specified in the localization file must be valid.|
| `VersionCannotBeEmpty` | Required field "version" is missing in the manifest. | The app package version is missing. |
| `VersionContainsOnlyNumbersDotSeparated` | App version supports only numbers in the '#.#.#' format. | The version in the app package isn't matched by the pattern, `#.#.#`. |
| `VersionHasMajorLessThan1` | App version shouldn't start with '0'. For example, 0.0.1 or 0.1 aren't valid app versions and 1.0 / 1.5.1 / 1.0.0 / 2.5.0 are valid app versions. In case of new update in manifest to an existing app in store. | The app version is less than 1.0. You need to upgrade your app version. For example, if the current version of your app in the store is 1.0 and you’re submitting an update for validation, the app version must be higher than 1.0. |

</details>

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



## Related content

- [App catalog C# sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/tree/main/samples/graph-appcatalog-lifecycle/csharp)
- [Microsoft Graph service-specific throttling limits](/graph/throttling-limits#microsoft-teams-service-limits)
