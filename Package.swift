// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "ResolverDummy",
    platforms: [.iOS(.v17)],
    dependencies: [
        .package(url: "https://github.com/ml-explore/mlx-swift.git", exact: "0.31.4"),
        .package(url: "https://github.com/ml-explore/mlx-swift-examples.git", branch: "main")
    ],
    targets: [
        .target(
            name: "Dummy",
            dependencies: [
                .product(name: "MLX", package: "mlx-swift"),
                .product(name: "MLXLLM", package: "mlx-swift-examples"),
                .product(name: "MLXLMCommon", package: "mlx-swift-examples")
            ]
        )
    ]
)
