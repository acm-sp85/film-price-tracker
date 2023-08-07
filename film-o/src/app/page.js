'use client';

import Image from 'next/image';
import styles from './page.module.css';
import { useState, useEffect } from 'react';

export default function Home() {
  useEffect(() => {
    fetch('http://localhost:3000/films')
      .then((response) => response.json())
      .then((data) => console.log(data));
  });

  return <main className={styles.main}>Film-O</main>;
}
