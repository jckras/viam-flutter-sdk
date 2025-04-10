//
//  Generated code. Do not modify.
//  source: component/testecho/v1/testecho.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'testecho.pb.dart' as $33;

export 'testecho.pb.dart';

@$pb.GrpcServiceName('viam.component.testecho.v1.TestEchoService')
class TestEchoServiceClient extends $grpc.Client {
  static final _$echo = $grpc.ClientMethod<$33.EchoRequest, $33.EchoResponse>(
      '/viam.component.testecho.v1.TestEchoService/Echo',
      ($33.EchoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $33.EchoResponse.fromBuffer(value));
  static final _$echoMultiple = $grpc.ClientMethod<$33.EchoMultipleRequest, $33.EchoMultipleResponse>(
      '/viam.component.testecho.v1.TestEchoService/EchoMultiple',
      ($33.EchoMultipleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $33.EchoMultipleResponse.fromBuffer(value));
  static final _$echoBiDi = $grpc.ClientMethod<$33.EchoBiDiRequest, $33.EchoBiDiResponse>(
      '/viam.component.testecho.v1.TestEchoService/EchoBiDi',
      ($33.EchoBiDiRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $33.EchoBiDiResponse.fromBuffer(value));
  static final _$stop = $grpc.ClientMethod<$33.StopRequest, $33.StopResponse>(
      '/viam.component.testecho.v1.TestEchoService/Stop',
      ($33.StopRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $33.StopResponse.fromBuffer(value));

  TestEchoServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$33.EchoResponse> echo($33.EchoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$echo, request, options: options);
  }

  $grpc.ResponseStream<$33.EchoMultipleResponse> echoMultiple($33.EchoMultipleRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$echoMultiple, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$33.EchoBiDiResponse> echoBiDi($async.Stream<$33.EchoBiDiRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$echoBiDi, request, options: options);
  }

  $grpc.ResponseFuture<$33.StopResponse> stop($33.StopRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$stop, request, options: options);
  }
}

@$pb.GrpcServiceName('viam.component.testecho.v1.TestEchoService')
abstract class TestEchoServiceBase extends $grpc.Service {
  $core.String get $name => 'viam.component.testecho.v1.TestEchoService';

  TestEchoServiceBase() {
    $addMethod($grpc.ServiceMethod<$33.EchoRequest, $33.EchoResponse>(
        'Echo',
        echo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $33.EchoRequest.fromBuffer(value),
        ($33.EchoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$33.EchoMultipleRequest, $33.EchoMultipleResponse>(
        'EchoMultiple',
        echoMultiple_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $33.EchoMultipleRequest.fromBuffer(value),
        ($33.EchoMultipleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$33.EchoBiDiRequest, $33.EchoBiDiResponse>(
        'EchoBiDi',
        echoBiDi,
        true,
        true,
        ($core.List<$core.int> value) => $33.EchoBiDiRequest.fromBuffer(value),
        ($33.EchoBiDiResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$33.StopRequest, $33.StopResponse>(
        'Stop',
        stop_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $33.StopRequest.fromBuffer(value),
        ($33.StopResponse value) => value.writeToBuffer()));
  }

  $async.Future<$33.EchoResponse> echo_Pre($grpc.ServiceCall call, $async.Future<$33.EchoRequest> request) async {
    return echo(call, await request);
  }

  $async.Stream<$33.EchoMultipleResponse> echoMultiple_Pre($grpc.ServiceCall call, $async.Future<$33.EchoMultipleRequest> request) async* {
    yield* echoMultiple(call, await request);
  }

  $async.Future<$33.StopResponse> stop_Pre($grpc.ServiceCall call, $async.Future<$33.StopRequest> request) async {
    return stop(call, await request);
  }

  $async.Future<$33.EchoResponse> echo($grpc.ServiceCall call, $33.EchoRequest request);
  $async.Stream<$33.EchoMultipleResponse> echoMultiple($grpc.ServiceCall call, $33.EchoMultipleRequest request);
  $async.Stream<$33.EchoBiDiResponse> echoBiDi($grpc.ServiceCall call, $async.Stream<$33.EchoBiDiRequest> request);
  $async.Future<$33.StopResponse> stop($grpc.ServiceCall call, $33.StopRequest request);
}
