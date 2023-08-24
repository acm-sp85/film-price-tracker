'use client';

import Image from 'next/image';
import styles from './page.module.css';
import { useState, useEffect } from 'react';

export default function Home() {
  const [films, setFilms] = useState([]);

  useEffect(() => {
    fetch('http://localhost:3000/films')
      .then((response) => response.json())
      .then((data) => setFilms(data));
  }, []);

  return (
    <main className={styles.main}>
      Film-O
      {films.map((film) => (
        <>
          <p>{film.name}</p>
          <p>{film.stock}</p>
          <p>{film.price}</p>
          <p>{film.details}</p>

          <img src={film.image}></img>
        </>
      ))}
    </main>
  );
}
