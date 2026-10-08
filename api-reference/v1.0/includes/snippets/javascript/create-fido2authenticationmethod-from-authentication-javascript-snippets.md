---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const fido2AuthenticationMethod = {
  '@odata.type': '#microsoft.graph.fido2AuthenticationMethod',
  displayName: 'My security key',
  publicKeyCredential: {
    '@odata.type': '#microsoft.graph.webauthnPublicKeyCredential',
    id: 'OEVEMkQzNTctNzNEMi00RjEzLTk5MjYtODdGNjFCMjRBMzQy',
    response: {
      '@odata.type': '#microsoft.graph.webauthnAuthenticatorAttestationResponse',
      clientDataJSON: 'eyJ0eXBlIjoid2ViYXV0aG4uY3JlYXRlIiwiY2hhbGxlbmdlIjoiUVRVMU16TkROekF0TmtNM05pMDBOVFJETFVKRFEwWXRSVFJFTURaQ05UQkZSVFJFIiwib3JpZ2luIjoiaHR0cHM6Ly9sb2dpbi5taWNyb3NvZnRvbmxpbmUuY29tIiwiY3Jvc3NPcmlnaW4iOmZhbHNlfQ',
      attestationObject: 'o2NmbXRkbm9uZWdhdHRTdG10oGhhdXRoRGF0YVikSZYN5YgOjGh0NBcPZHZgW4/krrmihjLHmVzzuoMdl2NdAAAAALraVWanqkAfvZZFYZpVEg0AIDhFRDJEMzU3LTczRDItNEYxMy05OTI2LTg3RjYxQjI0QTM0MqUBAgMmIAEhWCAMKJ7T4r8w5F6JGxJLJXNR0hV1MZF1aZ1F0pZXq5p5'
    },
    clientExtensionResults: {
      '@odata.type': '#microsoft.graph.webauthnAuthenticationExtensionsClientOutputs'
    }
  }
};

await client.api('/users/99a1915f-70a7-4b67-9dca-64095b41be73/authentication/fido2Methods')
	.post(fido2AuthenticationMethod);

```