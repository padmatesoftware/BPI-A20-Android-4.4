/*
 * Copyright (C) 2012 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.pts.simplecpu;

public class CpuNative {
    static {
        System.loadLibrary("ptscpu_jni");
    }
    /**
     * run qsort for given number of repetition
     * with each having the size of bufferSize.
     * @param numberElements
     * @param repeatition
     * @return time taken for computation, added for all repetition in ms
     */
    public static native double runSort(int numberElements, int repetition);

    /**
     * run matrix multiplication of (n x n) x (n x n)
     *
     * @param n dimension, should be multiple of 8
     * @param repetition
     * @return time taken for computation, added for all repetition in ms
     */
    public static native double runMatrixMultiplication(int n, int repetition);
}
