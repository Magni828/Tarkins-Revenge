/*
 *	server/zone/objects/tangible/threat/ThreatMapObserver.cpp generated by engine3 IDL compiler 0.60
 */

#include "ThreatMapObserver.h"

#include "server/zone/objects/tangible/TangibleObject.h"

/*
 *	ThreatMapObserverStub
 */

enum {RPC_NOTIFYOBSERVEREVENT__INT_OBSERVABLE_MANAGEDOBJECT_LONG_ = 6};

ThreatMapObserver::ThreatMapObserver(TangibleObject* me) : Observer(DummyConstructorParameter::instance()) {
	ThreatMapObserverImplementation* _implementation = new ThreatMapObserverImplementation(me);
	_impl = _implementation;
	_impl->_setStub(this);
}

ThreatMapObserver::ThreatMapObserver(DummyConstructorParameter* param) : Observer(param) {
}

ThreatMapObserver::~ThreatMapObserver() {
}



int ThreatMapObserver::notifyObserverEvent(unsigned int eventType, Observable* observable, ManagedObject* arg1, long long arg2) {
	ThreatMapObserverImplementation* _implementation = static_cast<ThreatMapObserverImplementation*>(_getImplementation());
	if (_implementation == NULL) {
		if (!deployed)
			throw ObjectNotDeployedException(this);

		DistributedMethod method(this, RPC_NOTIFYOBSERVEREVENT__INT_OBSERVABLE_MANAGEDOBJECT_LONG_);
		method.addUnsignedIntParameter(eventType);
		method.addObjectParameter(observable);
		method.addObjectParameter(arg1);
		method.addSignedLongParameter(arg2);

		return method.executeWithSignedIntReturn();
	} else
		return _implementation->notifyObserverEvent(eventType, observable, arg1, arg2);
}

DistributedObjectServant* ThreatMapObserver::_getImplementation() {

	_updated = true;
	return _impl;
}

void ThreatMapObserver::_setImplementation(DistributedObjectServant* servant) {
	_impl = servant;
}

/*
 *	ThreatMapObserverImplementation
 */

ThreatMapObserverImplementation::ThreatMapObserverImplementation(DummyConstructorParameter* param) : ObserverImplementation(param) {
	_initializeImplementation();
}


ThreatMapObserverImplementation::~ThreatMapObserverImplementation() {
}


void ThreatMapObserverImplementation::finalize() {
}

void ThreatMapObserverImplementation::_initializeImplementation() {
	_setClassHelper(ThreatMapObserverHelper::instance());

	_this = NULL;

	_serializationHelperMethod();
}

void ThreatMapObserverImplementation::_setStub(DistributedObjectStub* stub) {
	_this = static_cast<ThreatMapObserver*>(stub);
	ObserverImplementation::_setStub(stub);
}

DistributedObjectStub* ThreatMapObserverImplementation::_getStub() {
	return _this;
}

ThreatMapObserverImplementation::operator const ThreatMapObserver*() {
	return _this;
}

void ThreatMapObserverImplementation::lock(bool doLock) {
	_this->lock(doLock);
}

void ThreatMapObserverImplementation::lock(ManagedObject* obj) {
	_this->lock(obj);
}

void ThreatMapObserverImplementation::rlock(bool doLock) {
	_this->rlock(doLock);
}

void ThreatMapObserverImplementation::wlock(bool doLock) {
	_this->wlock(doLock);
}

void ThreatMapObserverImplementation::wlock(ManagedObject* obj) {
	_this->wlock(obj);
}

void ThreatMapObserverImplementation::unlock(bool doLock) {
	_this->unlock(doLock);
}

void ThreatMapObserverImplementation::runlock(bool doLock) {
	_this->runlock(doLock);
}

void ThreatMapObserverImplementation::_serializationHelperMethod() {
	ObserverImplementation::_serializationHelperMethod();

	_setClassName("ThreatMapObserver");

}

void ThreatMapObserverImplementation::readObject(ObjectInputStream* stream) {
	uint16 _varCount = stream->readShort();
	for (int i = 0; i < _varCount; ++i) {
		String _name;
		_name.parseFromBinaryStream(stream);

		uint16 _varSize = stream->readShort();

		int _currentOffset = stream->getOffset();

		if(ThreatMapObserverImplementation::readObjectMember(stream, _name)) {
		}

		stream->setOffset(_currentOffset + _varSize);
	}

	initializeTransientMembers();
}

bool ThreatMapObserverImplementation::readObjectMember(ObjectInputStream* stream, const String& _name) {
	if (ObserverImplementation::readObjectMember(stream, _name))
		return true;

	if (_name == "self") {
		TypeInfo<ManagedReference<TangibleObject* > >::parseFromBinaryStream(&self, stream);
		return true;
	}


	return false;
}

void ThreatMapObserverImplementation::writeObject(ObjectOutputStream* stream) {
	int _currentOffset = stream->getOffset();
	stream->writeShort(0);
	int _varCount = ThreatMapObserverImplementation::writeObjectMembers(stream);
	stream->writeShort(_currentOffset, _varCount);
}

int ThreatMapObserverImplementation::writeObjectMembers(ObjectOutputStream* stream) {
	String _name;
	int _offset;
	uint16 _totalSize;
	_name = "self";
	_name.toBinaryStream(stream);
	_offset = stream->getOffset();
	stream->writeShort(0);
	TypeInfo<ManagedReference<TangibleObject* > >::toBinaryStream(&self, stream);
	_totalSize = (uint16) (stream->getOffset() - (_offset + 2));
	stream->writeShort(_offset, _totalSize);


	return 1 + ObserverImplementation::writeObjectMembers(stream);
}

ThreatMapObserverImplementation::ThreatMapObserverImplementation(TangibleObject* me) {
	_initializeImplementation();
	// server/zone/objects/tangible/threat/ThreatMapObserver.idl():  		self = me;
	self = me;
}

/*
 *	ThreatMapObserverAdapter
 */

ThreatMapObserverAdapter::ThreatMapObserverAdapter(ThreatMapObserver* obj) : ObserverAdapter(obj) {
}

Packet* ThreatMapObserverAdapter::invokeMethod(uint32 methid, DistributedMethod* inv) {
	Packet* resp = new MethodReturnMessage(0);

	switch (methid) {
	case RPC_NOTIFYOBSERVEREVENT__INT_OBSERVABLE_MANAGEDOBJECT_LONG_:
		resp->insertSignedInt(notifyObserverEvent(inv->getUnsignedIntParameter(), static_cast<Observable*>(inv->getObjectParameter()), static_cast<ManagedObject*>(inv->getObjectParameter()), inv->getSignedLongParameter()));
		break;
	default:
		return NULL;
	}

	return resp;
}

int ThreatMapObserverAdapter::notifyObserverEvent(unsigned int eventType, Observable* observable, ManagedObject* arg1, long long arg2) {
	return (static_cast<ThreatMapObserver*>(stub))->notifyObserverEvent(eventType, observable, arg1, arg2);
}

/*
 *	ThreatMapObserverHelper
 */

ThreatMapObserverHelper* ThreatMapObserverHelper::staticInitializer = ThreatMapObserverHelper::instance();

ThreatMapObserverHelper::ThreatMapObserverHelper() {
	className = "ThreatMapObserver";

	Core::getObjectBroker()->registerClass(className, this);
}

void ThreatMapObserverHelper::finalizeHelper() {
	ThreatMapObserverHelper::finalize();
}

DistributedObject* ThreatMapObserverHelper::instantiateObject() {
	return new ThreatMapObserver(DummyConstructorParameter::instance());
}

DistributedObjectServant* ThreatMapObserverHelper::instantiateServant() {
	return new ThreatMapObserverImplementation(DummyConstructorParameter::instance());
}

DistributedObjectAdapter* ThreatMapObserverHelper::createAdapter(DistributedObjectStub* obj) {
	DistributedObjectAdapter* adapter = new ThreatMapObserverAdapter(static_cast<ThreatMapObserver*>(obj));

	obj->_setClassName(className);
	obj->_setClassHelper(this);

	adapter->setStub(obj);

	return adapter;
}

