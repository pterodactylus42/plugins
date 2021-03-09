//=============================================================================
//  MuseScore
//  Music Composition & Notation
//
//  octaveNoteNamesPlugin
//
//  Copyright (C) 2012 Werner Schweer
//  Copyright (C) 2013 - 2016 Joachim Schmitz
//  Copyright (C) 2014 Jörn Eichler
//  added octave feature 2021 carsten neubauer
//
//  This program is free software; you can redistribute it and/or modify
//  it under the terms of the GNU General Public License version 2
//  as published by the Free Software Foundation and appearing in
//  the file LICENCE.GPL
//=============================================================================

import QtQuick 2.0
import MuseScore 1.0

MuseScore {
   version: "2.0"
   description: qsTr("names notes language specific with octave")
   menuPath: "Plugins.Notes." + qsTr("OctaveNoteNames") 

   function nameChord (notes, text) {
      //reverse loop direction ... for (var i = notes.length - 1; i >= 0; i--) || for (var i = 0; i <= notes.length - 1; i++)
      for (var i = notes.length - 1; i >= 0; i--) { // high notes first

         if (typeof notes[i].tpc === "undefined") // like for grace notes ?!?
            return;

         if ( (Math.floor(notes[i].pitch / 12) - 1) >= 3) {

                  // subsequent notes are appended to text

               switch (notes[i].tpc) {
                  case -1: text.text += qsTranslate("InspectorAmbitus", "f♭♭"); break;
                  case  0: text.text += qsTranslate("InspectorAmbitus", "c♭♭"); break;
                  case  1: text.text += qsTranslate("InspectorAmbitus", "g♭♭"); break;
                  case  2: text.text += qsTranslate("InspectorAmbitus", "d♭♭"); break;
                  case  3: text.text += qsTranslate("InspectorAmbitus", "a♭♭"); break;
                  case  4: text.text += qsTranslate("InspectorAmbitus", "e♭♭"); break;
                  case  5: text.text += qsTranslate("InspectorAmbitus", "h♭♭"); break;
                  case  6: text.text += qsTranslate("InspectorAmbitus", "f♭"); break;
                  case  7: text.text += qsTranslate("InspectorAmbitus", "c♭"); break;
      
                  case  8: text.text += qsTranslate("InspectorAmbitus", "g♭"); break;
                  case  9: text.text += qsTranslate("InspectorAmbitus", "d♭"); break;
                  case 10: text.text += qsTranslate("InspectorAmbitus", "a♭"); break;
                  case 11: text.text += qsTranslate("InspectorAmbitus", "e♭"); break;
                  case 12: text.text += qsTranslate("InspectorAmbitus", "h♭"); break;
                  case 13: text.text += qsTranslate("InspectorAmbitus", "f"); break;
                  case 14: text.text += qsTranslate("InspectorAmbitus", "c"); break;
                  case 15: text.text += qsTranslate("InspectorAmbitus", "g"); break;
                  case 16: text.text += qsTranslate("InspectorAmbitus", "d"); break;
                  case 17: text.text += qsTranslate("InspectorAmbitus", "a"); break;
                  case 18: text.text += qsTranslate("InspectorAmbitus", "e"); break;
                  case 19: text.text += qsTranslate("InspectorAmbitus", "h"); break;
      
                  case 20: text.text += qsTranslate("InspectorAmbitus", "f♯"); break;
                  case 21: text.text += qsTranslate("InspectorAmbitus", "c♯"); break;
                  case 22: text.text += qsTranslate("InspectorAmbitus", "g♯"); break;
                  case 23: text.text += qsTranslate("InspectorAmbitus", "d♯"); break;
                  case 24: text.text += qsTranslate("InspectorAmbitus", "a♯"); break;
                  case 25: text.text += qsTranslate("InspectorAmbitus", "e♯"); break;
                  case 26: text.text += qsTranslate("InspectorAmbitus", "h♯"); break;
                  case 27: text.text += qsTranslate("InspectorAmbitus", "f♯♯"); break;
                  case 28: text.text += qsTranslate("InspectorAmbitus", "c♯♯"); break;
                  case 29: text.text += qsTranslate("InspectorAmbitus", "g♯♯"); break;
                  case 30: text.text += qsTranslate("InspectorAmbitus", "d♯♯"); break;
                  case 31: text.text += qsTranslate("InspectorAmbitus", "a♯♯"); break;
                  case 32: text.text += qsTranslate("InspectorAmbitus", "e♯♯"); break;
                  case 33: text.text += qsTranslate("InspectorAmbitus", "h♯♯"); break;
                  default: text.text += qsTr("?")   + text.text; break;
               } // end switch tpc
      
               // octave, middle C being C4
               if ((Math.floor(notes[i].pitch / 12) - 1) == 4) { text.text += "'"; }
               if ((Math.floor(notes[i].pitch / 12) - 1) == 5) { text.text += "''"; }
               if ((Math.floor(notes[i].pitch / 12) - 1) == 6) { text.text += "'''"; }

         } else { // octaves lower than 3

               switch (notes[i].tpc) {
                  case -1: text.text += qsTranslate("InspectorAmbitus", "F♭♭"); break;
                  case  0: text.text += qsTranslate("InspectorAmbitus", "C♭♭"); break;
                  case  1: text.text += qsTranslate("InspectorAmbitus", "G♭♭"); break;
                  case  2: text.text += qsTranslate("InspectorAmbitus", "D♭♭"); break;
                  case  3: text.text += qsTranslate("InspectorAmbitus", "A♭♭"); break;
                  case  4: text.text += qsTranslate("InspectorAmbitus", "E♭♭"); break;
                  case  5: text.text += qsTranslate("InspectorAmbitus", "H♭♭"); break;
                  case  6: text.text += qsTranslate("InspectorAmbitus", "F♭"); break;
                  case  7: text.text += qsTranslate("InspectorAmbitus", "C♭"); break;
      
                  case  8: text.text += qsTranslate("InspectorAmbitus", "G♭"); break;
                  case  9: text.text += qsTranslate("InspectorAmbitus", "D♭"); break;
                  case 10: text.text += qsTranslate("InspectorAmbitus", "A♭"); break;
                  case 11: text.text += qsTranslate("InspectorAmbitus", "E♭"); break;
                  case 12: text.text += qsTranslate("InspectorAmbitus", "H♭"); break;
                  case 13: text.text += qsTranslate("InspectorAmbitus", "F"); break;
                  case 14: text.text += qsTranslate("InspectorAmbitus", "D"); break;
                  case 15: text.text += qsTranslate("InspectorAmbitus", "G"); break;
                  case 16: text.text += qsTranslate("InspectorAmbitus", "D"); break;
                  case 17: text.text += qsTranslate("InspectorAmbitus", "A"); break;
                  case 18: text.text += qsTranslate("InspectorAmbitus", "E"); break;
                  case 19: text.text += qsTranslate("InspectorAmbitus", "H"); break;
      
                  case 20: text.text += qsTranslate("InspectorAmbitus", "F♯"); break;
                  case 21: text.text += qsTranslate("InspectorAmbitus", "C♯"); break;
                  case 22: text.text += qsTranslate("InspectorAmbitus", "G♯"); break;
                  case 23: text.text += qsTranslate("InspectorAmbitus", "D♯"); break;
                  case 24: text.text += qsTranslate("InspectorAmbitus", "A♯"); break;
                  case 25: text.text += qsTranslate("InspectorAmbitus", "E♯"); break;
                  case 26: text.text += qsTranslate("InspectorAmbitus", "H♯"); break;
                  case 27: text.text += qsTranslate("InspectorAmbitus", "F♯♯"); break;
                  case 28: text.text += qsTranslate("InspectorAmbitus", "C♯♯"); break;
                  case 29: text.text += qsTranslate("InspectorAmbitus", "G♯♯"); break;
                  case 30: text.text += qsTranslate("InspectorAmbitus", "D♯♯"); break;
                  case 31: text.text += qsTranslate("InspectorAmbitus", "A♯♯"); break;
                  case 32: text.text += qsTranslate("InspectorAmbitus", "E♯♯"); break;
                  case 33: text.text += qsTranslate("InspectorAmbitus", "H♯♯"); break;
                  default: text.text += qsTr("?")   + text.text; break;
               } // end switch tpc

         } // end if octave

         // octave, middle C being C4
         //text.text += (Math.floor(notes[i].pitch / 12) - 1)
         // or
         //text.text += (Math.floor(notes[i].ppitch / 12) - 1)

         // change below false to true for courtesy- and microtonal accidentals
         // you might need to come up with suitable translations
         // only #, b, natural and possibly also ## seem to be available in UNICODE
         if (false) {
            switch (notes[i].userAccidental) {
               case  0: break;
               case  1: text.text += qsTranslate("accidental", "Sharp"); break;
               case  2: text.text += qsTranslate("accidental", "Flat"); break;
               case  3: text.text += qsTranslate("accidental", "Double sharp"); break;
               case  4: text.text += qsTranslate("accidental", "Double flat"); break;
               case  5: text.text += qsTranslate("accidental", "Natural"); break;
               case  6: text.text += qsTranslate("accidental", "Flat-slash"); break;
               case  7: text.text += qsTranslate("accidental", "Flat-slash2"); break;
               case  8: text.text += qsTranslate("accidental", "Mirrored-flat2"); break;
               case  9: text.text += qsTranslate("accidental", "Mirrored-flat"); break;
               case 10: text.text += qsTranslate("accidental", "Mirrored-flat-slash"); break;
               case 11: text.text += qsTranslate("accidental", "Flat-flat-slash"); break;
               case 12: text.text += qsTranslate("accidental", "Sharp-slash"); break;
               case 13: text.text += qsTranslate("accidental", "Sharp-slash2"); break;
               case 14: text.text += qsTranslate("accidental", "Sharp-slash3"); break;
               case 15: text.text += qsTranslate("accidental", "Sharp-slash4"); break;
               case 16: text.text += qsTranslate("accidental", "Sharp arrow up"); break;
               case 17: text.text += qsTranslate("accidental", "Sharp arrow down"); break;
               case 18: text.text += qsTranslate("accidental", "Sharp arrow both"); break;
               case 19: text.text += qsTranslate("accidental", "Flat arrow up"); break;
               case 20: text.text += qsTranslate("accidental", "Flat arrow down"); break;
               case 21: text.text += qsTranslate("accidental", "Flat arrow both"); break;
               case 22: text.text += qsTranslate("accidental", "Natural arrow down"); break;
               case 23: text.text += qsTranslate("accidental", "Natural arrow up"); break;
               case 24: text.text += qsTranslate("accidental", "Natural arrow both"); break;
               case 25: text.text += qsTranslate("accidental", "Sori"); break;
               case 26: text.text += qsTranslate("accidental", "Koron"); break;
               default: text.text += qsTr("?"); break;
            } // end switch userAccidental

         } // end if courtesy- and microtonal accidentals

         var sep = "\n";    //put separator after octave marker is written
         if ( i != 0 ) 
            text.text = text.text + sep; // any but bottom note 

         console.log(text.text + " - " + i + " - " + notes[i].pitch)

      } // end for note

   }

   onRun: {
      if (typeof curScore === 'undefined')
         Qt.quit();

      var cursor = curScore.newCursor();
      var startStaff;
      var endStaff;
      var endTick;
      var fullScore = false;
      cursor.rewind(1);
      if (!cursor.segment) { // no selection
         fullScore = true;
         startStaff = 0; // start with 1st staff
         endStaff  = curScore.nstaves - 1; // and end with last
      } else {
         startStaff = cursor.staffIdx;
         cursor.rewind(2);
         if (cursor.tick == 0) {
            // this happens when the selection includes
            // the last measure of the score.
            // rewind(2) goes behind the last segment (where
            // there's none) and sets tick=0
            endTick = curScore.lastSegment.tick + 1;
         } else {
            endTick = cursor.tick;
         }
         endStaff = cursor.staffIdx;
      }
      //console.log(startStaff + " - " + endStaff + " - " + endTick)

      for (var staff = startStaff; staff <= endStaff; staff++) {
         for (var voice = 0; voice < 4; voice++) {
            cursor.rewind(1); // beginning of selection
            cursor.voice    = voice;
            cursor.staffIdx = staff;

            if (fullScore)  // no selection
               cursor.rewind(0); // beginning of score

            while (cursor.segment && (fullScore || cursor.tick < endTick)) {
               if (cursor.element && cursor.element.type == Element.CHORD) {
                  var text = newElement(Element.STAFF_TEXT);

                  var graceChords = cursor.element.graceNotes;
                  for (var i = 0; i < graceChords.length; i++) {
                     // iterate through all grace chords
                     var notes = graceChords[i].notes;
                     nameChord(notes, text);
                     // there seems to be no way of knowing the exact horizontal pos.
                     // of a grace note, so we have to guess:
                     text.pos.x = -2.5 * (graceChords.length - i);
                     switch (voice) {
                        case 0: text.pos.y =  1; break;
                        case 1: text.pos.y = 10; break;
                        case 2: text.pos.y = -1; break;
                        case 3: text.pos.y = 12; break;
                     }

                     cursor.add(text);
                     // new text for next element
                     text  = newElement(Element.STAFF_TEXT);
                  }

                  var notes = cursor.element.notes;
                  nameChord(notes, text);

                  switch (voice) {
                     case 0: text.pos.y =  0; break;
                     case 1: text.pos.y = 10; break;
                     case 2: text.pos.y = -1; break;
                     case 3: text.pos.y = 12; break;
                  }
                  if ((voice == 0) && (notes[0].pitch > 83))
                     text.pos.x = 1;
                  cursor.add(text);
               } // end if CHORD
               cursor.next();
            } // end while segment
         } // end for voice
      } // end for staff
      Qt.quit();
   } // end onRun
}
