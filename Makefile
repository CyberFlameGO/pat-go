test:
	go test

vectors: test
	ED25519_BLINDING_TEST_VECTORS_OUT=ed25519-blinding-test-vectors.json go test -v -run TestVectorGenerateEd25519Blinding
	ECDSA_BLINDING_TEST_VECTORS_OUT=ecdsa-blinding-test-vectors.json go test -v -run TestVectorGenerateECDSABlinding
	PAT_INDEX_TEST_VECTORS_OUT=index-test-vectors.json go test -v -run TestVectorGenerateIndex
	PAT_ORIGIN_ENCRYPTION_TEST_VECTORS_OUT=origin-encryption-test-vectors.json go test -v -run TestVectorGenerateOriginEncryption
	BASIC_ISSUANCE_TEST_VECTORS_OUT=basic-issuance-test-vectors.json go test -v -run TestVectorGenerateBasicIssuance