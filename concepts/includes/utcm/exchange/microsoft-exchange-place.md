---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource configures a place in Exchange Online (e.g., room).


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | The Identity parameter specifies the room mailbox that you want to modify. You can use any value that uniquely identifies the room. | - |
| DisplayName | Write | String | The display name of the place. | - |
| AudioDeviceName | Write | String | The AudioDeviceName parameter specifies the name of the audio device in the room. If the value contains spaces, enclose the value in quotation marks. | - |
| Building | Write | String | The Building parameter specifies the building name or building number that the room is in. If the value contains spaces, enclose the value in quotation marks. | - |
| Capacity | Write | UInt32 | The Capacity parameter specifies the capacity of the room. A valid value is an integer. | - |
| City | Write | String | The City parameter specifies the room's city. If the value contains spaces, enclose the value in quotation marks. | - |
| CountryOrRegion | Write | String | The CountryOrRegion parameter specifies the room's country or region. A valid value is a valid ISO 3166-1 two-letter country/region code (for example, AU for Australia) or the corresponding friendly name for the country/region (which might be different from the official ISO 3166 Maintenance Agency short name). | - |
| Desks | Write | StringArray[] | N/A | - |
| DisplayDeviceName | Write | String | The DisplayDeviceName parameter specifies the name of the display device in the room. If the value contains spaces, enclose the value in quotation marks. | - |
| Floor | Write | String | The Floor parameter specifies the floor number that the room is on. | - |
| FloorLabel | Write | String | The FloorLabel parameter specifies a descriptive label for the floor that the room is on. If the value contains spaces, enclose the value in quotation marks. | - |
| GeoCoordinates | Write | String | The GeoCoordinates parameter specifies the room's location in latitude, longitude and (optionally) altitude coordinates. | - |
| IsWheelChairAccessible | Write | Boolean | The IsWheelChairAccessible parameter specifies whether the room is wheelchair accessible. | - |
| Label | Write | String | The Label parameter specifies a descriptive label for the room (for example, a number or name). If the value contains spaces, enclose the value in quotation marks. | - |
| MTREnabled | Write | Boolean | The MTREnabled parameter identifies the room as configured with a Microsoft Teams room system. You can add Teams room systems as audio sources in Teams meetings that involve the room. | - |
| ParentId | Write | String | The ParentId parameter specifies the ID of a Place in the parent location hierarchy in Microsoft Places. | - |
| ParentType | Write | String | The ParentType parameter specifies the parent type of the ParentId in Microsoft Places. Valid values are: Floor, Section | `Floor`, `Section`, `None` |
| Phone | Write | String | The Phone parameter specifies the room's telephone number. | - |
| PostalCode | Write | String | The PostalCode parameter specifies the room's postal code. | - |
| State | Write | String | The State parameter specifies the room's state or province. | - |
| Street | Write | String | The Street parameter specifies the room's physical address. | - |
| Tags | Write | StringArray[] | The Tags parameter specifies additional features of the room (for example, details like the type of view or furniture type). | - |
| VideoDeviceName | Write | String | The VideoDeviceName parameter specifies the name of the video device in the room. If the value contains spaces, enclose the value in quotation marks. | - |
| Ensure | Write | String | Specifies if this Outbound connector should exist. | `Present`, `Absent` |


### Permissions

#### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Global Reader |
| Update    | Exchange Administrator |


#### Exchange

To authenticate with Microsoft Exchange, this resource requires the following application permissions. Delegated scenarios aren't supported.

##### Roles

- Remote and Accepted Domains, View-Only Configuration

##### Role Groups

- Organization Management

#### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


##### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



