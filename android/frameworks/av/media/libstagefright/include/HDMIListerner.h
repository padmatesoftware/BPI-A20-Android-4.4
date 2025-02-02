#ifndef HDMI_LISTENER_H
#define HDMI_LISTENER_H

namespace android {
typedef void (*hdmi_state_callback_f)(void* cookie, bool state);

class HDMIListerner{
public:
	void start();
	void stop();
	HDMIListerner();
	~HDMIListerner();

    void  setNotifyCallback(
            void* cookie, hdmi_state_callback_f notifyFunc);

private:
	pthread_t	mThread;
	bool		mDone;
	bool 		mHDMIPlugged;
	bool		mRunning;

    Mutex               	mNotifyLock;
    void*              		mCookie;
    hdmi_state_callback_f   mNotify;

	void threadFunc();
	static void *ThreadWrapper(void *me);
    void sendState();
	HDMIListerner(const HDMIListerner&);
	HDMIListerner &operator=(const HDMIListerner&);
};
}//namespace android

#endif//HDMI_LISTENER_H
