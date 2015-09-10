class HelloWorld {
    static {
        System.loadLibrary("HelloWorld");
    }

    private native void print();

    private native int sum(int a, int b);

    public static void main(String[] args) {
        System.out.println("Test: Java with JNI");

        new HelloWorld().print();

        System.out.println("Sum = " + new HelloWorld().sum(222, 333));
    }
}
