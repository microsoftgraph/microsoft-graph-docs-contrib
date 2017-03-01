# Update deviceComplianceUserOverview

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [deviceComplianceUserOverview](../resources/intune_deviceconfig_devicecomplianceuseroverview.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}/userStatusOverview/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [deviceComplianceUserOverview](../resources/intune_deviceconfig_devicecomplianceuseroverview.md) object.
The following table shows the properties that are required when you create a [deviceComplianceUserOverview](../resources/intune_deviceconfig_devicecomplianceuseroverview.md).

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
If successful, this method returns a `200 OK` response code and an updated [deviceComplianceUserOverview](../resources/intune_deviceconfig_devicecomplianceuseroverview.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}/userStatusOverview/
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
Content-Length: 321

{
  "@odata.type": "#microsoft.graph.deviceComplianceUserOverview",
  "id": "2d4f5bf4-5bf4-2d4f-f45b-4f2df45b4f2d",
  "numberOfPendingUsers": 4,
  "numberOfSucceededUsers": 6,
  "numberOfErrorUsers": 2,
  "numberOfFailedUsers": 3,
  "lastUpdateTime": "2017-01-01T00:02:03.0612494-08:00",
  "policyRevision": 14
}
```



