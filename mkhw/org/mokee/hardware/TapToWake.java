/*
 * Copyright (C) 2014 The MoKee OpenSource Project
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

package org.mokee.hardware;

import org.mokee.hardware.util.FileUtils;

import java.io.File;

/**
 * Tap (usually double-tap) to wake. This *should always* be supported by
 * the hardware directly. A lot of recent touch controllers have a firmware
 * option for this
 */
public class TapToWake {

    private static final String CONTROL_PATH = "/sys/devices/virtual/touchscreen/touchscreen_dev/gesture_ctrl";

    /**
     * Whether device supports it
     *
     * @return boolean Supported devices must return always true
     */
    public static boolean isSupported() {
	    File file = new File(CONTROL_PATH);
	    return file.exists();
    }

    /**
     * This method return the current activation state
     *
     * @return boolean Must be false when feature is not supported or 
     * disabled.
     */
    public static boolean isEnabled() {
        boolean enabled = false;
        String state = FileUtils.readOneLine(CONTROL_PATH);
        if (state != null)
            enabled = (Long.decode(state) & 0x200) == 0x200;
        return enabled;
    }

    /**
     * This method allows to set activation state
     *
     * @param state The new state
     * @return boolean for on/off, exception if unsupported
     */
    
    public static boolean setEnabled(boolean state) {
	    return FileUtils.writeLine(CONTROL_PATH, (state ? "double_click=true" : "double_click=false"));
    }

}
