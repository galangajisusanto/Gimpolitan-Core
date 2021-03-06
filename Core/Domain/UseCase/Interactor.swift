//
//  Interactor.swift
//  Core
//
//  Created by Galang Aji Susanto on 20/11/21.
//

import RxSwift

public struct Interactor<Request, Response, R: Repository>: UseCase
where R.Request == Request, R.Response == Response {
    private let _repository: R
    public init(repository: R) {
        _repository = repository
    }
    public func execute(request: Request?) -> Observable<Response> {
        _repository.execute(request: request)
    }
}
