class NooTest {
    static {
        System.loadLibrary("NooTest");
    }

    private native int sum(int a, int b);
    private native void hello_world();

    public static void main(String[] args) {
        System.out.println("Test: Java with JNI");

        new NooTest().hello_world();

        System.out.println("Sum = " + new NooTest().sum(222, 333));
    }
}
