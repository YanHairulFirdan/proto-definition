.PHONY: generate
generate:
	@echo 'Generating Go Code dari .proto files...'
	protoc --go_out=. --go_opt=paths=source_relative \
		--go-grpc_out=. --go-grpc_opt=paths=source_relative \
		product/product.proto
	protoc --go_out=. --go_opt=paths=source_relative \
		--go-grpc_out=. --go-grpc_opt=paths=source_relative \
		order/order.proto
	@echo 'Selesai! File .pb.go berhasil dibuat.'
clean:
	rm -f product/*.pb.go order/*.pb.go