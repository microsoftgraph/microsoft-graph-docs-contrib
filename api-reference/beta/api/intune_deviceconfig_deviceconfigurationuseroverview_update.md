# Update deviceConfigurationUserOverview

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [deviceConfigurationUserOverview](../resources/intune_deviceconfig_deviceconfigurationuseroverview.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/userStatusOverview/
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/rootCertificate//userStatusOverview/
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/identityCertificate//userStatusOverview/
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/identityCertificate//rootCertificate//userStatusOverview/
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.iosScepCertificateProfile/rootCertificate//userStatusOverview/
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.macOSScepCertificateProfile/rootCertificate//userStatusOverview/
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.windows81SCEPCertificateProfile/rootCertificate//userStatusOverview/
PATCH /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.windowsPhone81VpnConfiguration/identityCertificate//userStatusOverview/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [deviceConfigurationUserOverview](../resources/intune_deviceconfig_deviceconfigurationuseroverview.md) object.
The following table shows the properties that are required when you create a [deviceConfigurationUserOverview](../resources/intune_deviceconfig_deviceconfigurationuseroverview.md).

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|numberOfPendingUsers|Int32|Number of pending Users|
|numberOfSucceededUsers|Int32|Number of succeeded Users|
|numberOfErrorUsers|Int32|Number of error Users|
|numberOfFailedUsers|Int32|Number of failed Users|
|lastUpdateTime|DateTimeOffset|Last update time|
|policyRevision|Int32|Version of the policy for that overview|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceConfigurationUserOverview](../resources/intune_deviceconfig_deviceconfigurationuseroverview.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations/{deviceConfigurationId}/userStatusOverview/
Content-type: application/json
Content-length: 205

{
  "numberOfPendingUsers": 4,
  "numberOfSucceededUsers": 6,
  "numberOfErrorUsers": 2,
  "numberOfFailedUsers": 3,
  "lastUpdateTime": "2017-01-01T00:02:03.0612494-08:00",
  "policyRevision": 14
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 324

{
  "@odata.type": "#microsoft.graph.deviceConfigurationUserOverview",
  "id": "000e52d7-52d7-000e-d752-0e00d7520e00",
  "numberOfPendingUsers": 4,
  "numberOfSucceededUsers": 6,
  "numberOfErrorUsers": 2,
  "numberOfFailedUsers": 3,
  "lastUpdateTime": "2017-01-01T00:02:03.0612494-08:00",
  "policyRevision": 14
}
```



