//: Playground - noun: a place where people can play

import Cocoa
import CoreMIDI
import AudioToolbox

let flags = MusicSequenceLoadFlags.smf_PreserveTracks

var musicSequence: MusicSequence
var sequence: MusicSequence? = nil
var status = NewMusicSequence(&sequence)
musicSequence = sequence!

if status != OSStatus(noErr) {
    print("bad status creating sequence \(status)")
}


let midiFileURL = URL(fileURLWithPath: "[ABSOLUTE PATH TO MIDI FILE]")

status = MusicSequenceFileLoad(musicSequence,
                               midiFileURL as CFURL,
                               .midiType,
                               flags)

if status != OSStatus(noErr) {
    print("bad status reading file \(status)")
}
