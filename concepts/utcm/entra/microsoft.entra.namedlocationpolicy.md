---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures the Azure AD Named Location Policies in Azure Active Directory


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **OdataType** | Write | String | Specifies the Odata Type of a Named Location object in Azure Active Directory | `#microsoft.graph.countryNamedLocation`, `#microsoft.graph.ipNamedLocation`, `#microsoft.graph.compliantNetworkNamedLocation` |
| **Id** | Write | String | Specifies the ID of a Named Location in Azure Active Directory. | |
| **DisplayName** | Key | String | Specifies the Display Name of a Named Location in Azure Active Directory | |
| **IpRanges** | Write | StringArray[] | Specifies the IP ranges of the Named Location in Azure Active Directory | |
| **IsTrusted** | Write | Boolean | Specifies the isTrusted value for the Named Location (IP ranges only) in Azure Active Directory | |
| **CountriesAndRegions** | Write | StringArray[] | Specifies the countries and regions for the Named Location in Azure Active Directory | |
| **CountryLookupMethod** | Write | String | Determines what method is used to decide which country/region the user is located in. Possible values are clientIpAddress(default) and authenticatorAppGps. | `clientIpAddress`, `authenticatorAppGps` |
| **IncludeUnknownCountriesAndRegions** | Write | Boolean | Specifies the includeUnknownCountriesAndRegions value for the Named Location in Azure Active Directory | |
| **Ensure** | Write | String | Specify if the Azure AD Named Location should exist or not. | `Present`, `Absent` |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Security Reader |
| Update    | Security Administrator |


### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Policy.Read.All |
| Update    | Policy.Read.All, Policy.ReadWrite.ConditionalAccess |



