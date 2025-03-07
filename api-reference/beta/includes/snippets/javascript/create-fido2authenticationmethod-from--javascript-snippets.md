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
  displayName: 'Red Key',
  publicKeyCredential: {
    id: 'pgIfj2fnom8rJdb4_h1gKqDkq-gxHFksI-m2aR5T-PNNycBfENAM4ksEBvoXky6d',
    response: {
      clientDataJSON: 'VGhpcyBpcyB0aGUgY2xpZW50RGF0YUpTT04gZW5jb2RlZCB0byBiZSB3ZWJzYWZlIHdoaWNoIHdpbGwgYmUgc2VudCB0byBFbnRyYSBJRA',
      attestationObject: 'VGhpcyBpcyB0aGUgYXR0ZXN0YXRpb25PYmplY3QgZW5jb2RlZCB0byBiZSB3ZWJzYWZlIHdoaWNoIHdpbGwgYmUgc2VudCB0byBFbnRyYSBJRA'
    }
  }
};

await client.api('/users/{id}/authentication/fido2Methods')
	.version('beta')
	.post(fido2AuthenticationMethod);

```