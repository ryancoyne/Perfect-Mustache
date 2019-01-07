// swift-tools-version:4.0
//
//  Package.swift
//  PerfectMustache
//
//  Created by Kyle Jessup on 2016-05-02.
//	Copyright (C) 2016 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2018 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import PackageDescription
let package = Package(name: "PerfectMustache", 
	products: [.library(name: "PerfectMustache",targets: ["PerfectMustache"]),],
    dependencies: [
		.package(url: "https://github.com/ryancoyne/Perfect-HTTP.git", from: "4.0.0"),
	],
    targets: [
        .target(
            name: "PerfectMustache",
            dependencies: ["PerfectHTTP"],
            path: "Sources/PerfectMustache"
        ),
        .testTarget(
            name: "PerfectMustacheTests",
            dependencies: ["PerfectMustache"]
        ),
    ])
